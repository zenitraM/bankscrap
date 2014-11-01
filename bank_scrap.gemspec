# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bank_scrap/version'

Gem::Specification.new do |spec|
  spec.name          = "bank_scrap"
  spec.version       = BankScrap::VERSION
  spec.authors       = ["Ismael Sánchez"]
  spec.email         = ["root@ismagnu.com"]
  spec.summary       = %q{Get your bank account details.}
  spec.description   = %q{Command line tools to get bank account details from some banks.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '~> 2.1'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'thor'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'execjs'
  spec.add_dependency 'curb'
  spec.add_dependency 'activesupport'
end
