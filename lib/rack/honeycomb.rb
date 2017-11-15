require 'rack'

module Rack
  module Honeycomb
    autoload :Middleware, ::File.expand_path(::File.dirname(__FILE__)) + '/honeycomb/middleware'
  end
end
