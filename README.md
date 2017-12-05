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

Configure with an authentication token
```
require 'metronome'
Metronome.configure('http://url', token: 'token')
```

Once the client is configured, 

### Jobs

```ruby
puts Metronome::Job.all
#<Flexirest::ResultIterator:0x007fdddb39d558>
puts Metronome::Job.find('my_job_name')
#<Metronome::Job:0x007fdddb34cc70>
```

### Runs

```ruby

puts Metronome::Run.all(job_id: j.id)
#<Flexirest::ResultIterator:0x007feb06307cf0>
puts Metronome::Run.find(job_id: 'id_one', run_id: 'id')
#<Metronome::Run:0x007fdddb34cc70>
```

### Metrics

```ruby
puts Metronome::Metric.all
#<Metronome::Metric:0x007ff1810c8648>
```

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `bundle exec rake test` to run the tests. 

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cduranleau/metronome-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
