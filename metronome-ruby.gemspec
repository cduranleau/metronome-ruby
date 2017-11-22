
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metronome/version'

Gem::Specification.new do |spec|
  spec.name          = 'metronome'
  spec.version       = Metronome::VERSION
  spec.authors       = ['Christian Duranleau']
  spec.email         = ['cduranleau@gmail.com']

  spec.summary       = 'Metronome client'
  spec.description   = 'Metronome client'
  spec.homepage      = 'https://github.com/cduranleau/metronome-ruby'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'flexirest'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
end
