# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eighty_sixed/version'

Gem::Specification.new do |spec|
  spec.name          = "eighty_sixed"
  spec.version       = EightySixed::VERSION
  spec.authors       = ["Cristian Tountzis"]
  spec.email         = ["cristian@intriguos.com"]
  spec.summary       = %q{Calculates the best possible blackjack hand}
  spec.description   = %q{Calculates the best possible hand, don't use in the casino you may get 86'd}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
