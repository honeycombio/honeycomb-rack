#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rack/honeycomb/version"

Gem::Specification.new do |spec|
  spec.name               = 'rack-honeycomb'
  spec.version            = Rack::Honeycomb::VERSION
  spec.date               = "2016-11-17"

  spec.homepage           = 'https://github.com/honeycombio/rack-honeycomb'
  spec.license            = 'Apache-2.0'
  spec.summary            = 'Rack middleware for logging request data to Honeycomb.'
  spec.description        = 'Rack middleware for logging request data to Honeycomb.'

  spec.authors            = ['The Honeycomb.io Team']
  spec.email              = 'support@honeycomb.io'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "webmock", "~> 2.1"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "yardstick", "~> 0.9"
  spec.add_runtime_dependency     'rack',      '>= 1.0.0'
  spec.add_runtime_dependency     'libhoney',  '~> 1.0'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'yard'
end
