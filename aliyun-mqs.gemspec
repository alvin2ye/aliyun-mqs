# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aliyun/mqs/version'

Gem::Specification.new do |spec|
  spec.name          = 'aliyun-mqs'
  spec.version       = Aliyun::Mqs::VERSION
  spec.authors       = ["mgampkay"]
  spec.email         = ["mgampkay@gmail.com"]
  spec.summary       = 'Ruby SDK for Aliyun MQS (non-official)'
  spec.description   = 'Non-official SDK for Aliyun MQS'
  spec.homepage      = 'https://github.com/mgampkay/aliyun-mqs'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri', '>= 1.6'
  spec.add_dependency 'activesupport', '>= 4.1'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
