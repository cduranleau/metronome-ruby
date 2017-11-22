
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metronome/version'

Gem::Specification.new do |spec|
  spec.name          = 'metronome-client'
  spec.version       = Metronome::VERSION
  spec.authors       = ['Christian Duranleau']
  spec.email         = ['cduranleau@gmail.com']

  spec.summary       = 'Metronome client'
  spec.description   = 'Metronome client that uses flexirest'
  spec.homepage      = 'https://github.com/cduranleau/metronome-ruby'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'flexirest', '~> 1.5'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'rubocop', '~> 0.51'
  spec.add_development_dependency 'simplecov', '~> 0.15'
end
