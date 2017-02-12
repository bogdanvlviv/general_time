# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'general_time/version'

Gem::Specification.new do |spec|
  spec.name          = "general_time"
  spec.version       = GeneralTime::VERSION
  spec.authors       = ["bogdanvlviv"]
  spec.email         = ["bogdanvlviv@gmail.com"]

  spec.summary       = "Allows getting general time between two instances of Date/Time classes"
  spec.description   = ""
  spec.homepage      = "https://github.com/bogdanvlviv/general_time"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
