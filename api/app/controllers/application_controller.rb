require_relative '../../config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  use Rack::JSONBodyParser

  configure do
    enable :cross_origin
  end
  
  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end
  
  options "*" do
    response.headers["Allow"] = "GET, POST, PUT, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end
  
  
end
 
  