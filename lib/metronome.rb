require 'metronome/version'

require 'flexirest'
Dir["#{File.dirname(__FILE__)}/metronome/entities/*.rb"].each { |f| require f }

# Configuration for Metronome connection
module Metronome
  # Configuration for Metronome connection
  def self.configure(url, options = {})
    raise 'You must supply a URL' if url.blank?
    raise 'Missing :token' unless options.key?(:token)

    Flexirest::Base.base_url = url

    Flexirest::Base.faraday_config do |c|
      c.use Faraday::Response::RaiseError
      c.headers['Content-Type'] = 'application/json'
      # TODO: add in un/pw validation
      c.headers['Authorization'] = "token=#{options[:token]}"
      c.ssl.verify = false # TODO: Remove this
      c.path_prefix = '/service/metronome'
      c.adapter Faraday.default_adapter
    end
  end
end
