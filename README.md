# Metronome::Ruby

A simple ruby client for [Metronome](https://github.com/dcos/metronome)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'metronome-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install metronome-client

## Usage

```
require 'metronome'
client = Metronome::Client.new('http://url', uid: 'uid', private_key: 'private_key')
```
Or auth with a token.

```
require 'metronome'
client = Metronome::Client.new('http://url', token: 'token')
```

Once the client is built, 

```
puts client.job('identifier')
puts client.jobs(embed: 'historySummary')

puts client.create_job(JSON.parse(File.read('my_job.json')))
```


## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `bundle exec rake test` to run the tests. 

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cduranleau/metronome-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
