# This file is used by Rack-based servers to start the application.
require_relative 'config/environment'

use Rack::Cors do
    allow do
      origins 'localhost:3000', '127.0.0.1:3000',
              /\Ahttp:\/\/192\.168\.0\.\d{1,3}(:\d+)?\z/
              # regular expressions can be used here
  
      resource '/boards/index', :headers => 'x-domain-token'
      resource '/api/v1/*',
          methods: [:get, :post, :delete, :put, :patch, :options, :head],
          headers: 'x-domain-token',
          expose: ['Some-Custom-Response-Header'],
          max_age: 600
          # headers to expose
          # maybe user-authortized-token could be exposed as a header here
    end
  
    # allow do
    #   origins '*'
    #   resource '/public/*', headers: :any, methods: :get
  
    #   # Only allow a request for a specific host
    #   resource '/api/v1/*',
    #       headers: :any,
    #       methods: [:get, :post, :delete, :put, :patch, :options, :head],
    #       if: proc { |env| env['HTTP_HOST'] == 'localhost:3001' }
    # end
  end

run Rails.application
