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

  # helper method to return json data
  def create_response(success, status_code, message, data)
    if !success
      status status_code
      response = { success: false, message: message, data: nil }
    else
      response = { success: true, message: nil, data: data }
    end
    return response
  end
  
  post '/login' do
    user = User.find_by(email: params[:email])
    if user == nil
      response = create_response(false, 401, 'Invalid email or password', nil)
      return response.to_json
    else
      response = create_response(true, 200, nil , user)
      response.to_json(include: :userstacks)
    end
  end
end
 
  