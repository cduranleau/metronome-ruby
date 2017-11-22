require 'simplecov'

# SimpleCov can only properly instrument code that is loaded *after* SimpleCov
# is configured. Keep SimpleCov at the top of spec_helper to help ensure all
# code is properly instrumented for generating coverage reports...
SimpleCov.start do
  coverage_dir 'target/spec_coverage'

  # Filter some directories out of code coverage generation....
  add_filter '/spec/'
  add_filter '/vendor/'
end

require 'bundler/setup'
require 'metronome'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
