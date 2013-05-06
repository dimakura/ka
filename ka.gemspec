# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ka/version'

Gem::Specification.new do |spec|
  spec.name          = "ka"
  spec.version       = Ka::VERSION
  spec.authors       = ["Dimitri Kurashvili"]
  spec.email         = ["dimakura@gmail.com"]
  spec.description   = %q{georgian language functionality}
  spec.summary       = %q{common functionality for georgian language software}
  spec.homepage      = "http://carbon.ge"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2'
end
