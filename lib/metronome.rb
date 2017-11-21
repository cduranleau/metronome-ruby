require 'metronome/version'
require 'metronome/jobs'
require 'faraday'
require 'faraday_middleware'
require 'jwt'

module Metronome
  class Client
    include Metronome::Jobs
    def initialize(url, options = {})
      raise 'You must supply a URL' if url.nil? || url.empty?
      @connection = Faraday.new(url: url, ssl: { verify: false }) do |c|
        c.use Faraday::Response::RaiseError
        c.request :json
        c.headers['Authorization'] = "token=#{auth_token(options)}"
        c.path_prefix = '/service/metronome/v1'
        c.adapter Faraday.default_adapter
      end
    end

    private

    def auth_token(options)
      return options[:token] if options.key?(:token)
      if options.key?(:private_key)
        return post('/acs/api/v1/auth/login', uid: options[:uid],
                                              token: JWT.encode(
                                                { 'uid' => options[:uid] },
                                                OpenSSL::PKey::RSA.new(options[:private_key]),
                                                'RS256'
                                              ))
      end
      raise 'Missing :password or :token'
    end

    def get(url, values = nil)
      JSON.parse(@connection.get(url, values).body)
    end

    def post(url, body)
      response = @connection.post(url, body) do |req|
        req.url url
        req.headers['Content-Type'] = 'application/json'
        req.body = body.to_json
      end
      JSON.parse(response.body)
    end
  end
end
