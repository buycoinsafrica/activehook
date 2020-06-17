# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activehook/version'

Gem::Specification.new do |spec|
  spec.name          = "activehook"
  spec.version       = ActiveHook::VERSION
  spec.authors       = ["Nicholas Sweeting"]
  spec.email         = ["nsweeting@gmail.com"]
  spec.summary       = "Fast and simple webhook delivery microservice for Ruby."
  spec.description   = "Fast and simple webhook delivery microservice for Ruby."
  spec.homepage      = "https://github.com/nsweeting/activehook"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = %w( activehook-server activehook-app )
  spec.require_paths = %w( lib )

  spec.add_runtime_dependency     "redis", "~> 4.0"
  spec.add_runtime_dependency     "connection_pool", "~> 2.2"
  spec.add_runtime_dependency     "puma", "~> 3.4"
  spec.add_runtime_dependency     "rack"
  spec.add_runtime_dependency     "httparty"
  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "byebug", "~> 5.0"
  spec.add_development_dependency "fakeredis", "~> 0.8.0"
end
