require_relative '../../config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # use Rack::JSONBodyParser

  # configure do
  #   enable :cross_origin
  # end
  
  # before do
  #   response.headers['Access-Control-Allow-Origin'] = '*'
  # end
  
  # options "*" do
  #   response.headers["Allow"] = "GET, POST, PUT, DELETE, OPTIONS"
  #   response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  #   response.headers["Access-Control-Allow-Origin"] = "*"
  #   200
  # end

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
      response.to_json
    end
  end

  post '/signup' do
    user = find_by(email: params[:email])

    if user
      response = create_response(false, 401, 'Email already exists', nil)
    else
       User.create(user_name: params[:name], email: params[:email],devtype: params[:devtype],
                   experience: params[:experience],image_url: '')
    end

  end

  get '/stacks' do
    stacks = Stack.all
    stacks.to_json
    response = create_response(true,200,nil,stacks)
    response.to_json
  end

  get '/stacks/user/:id' do
    stacks = Userstack.where(user_id: params[:id])
    response = create_response(true, 200, nil , stacks)
    response.to_json
  end

  patch '/users/edit/:id' do
    # puts params
    id = params[:id]
    user = User.find(id)
    # user_stacks = Userstack.find_by(user_id: id)
    ActiveRecord::Base.transaction do
      user.update(
        user_name: params[:name],
        email: params[:email],
        devtype: params[:devtype],
        experience: params[:experience]
      )

      user.userstacks.destroy_all
    
      params[:stacks].each do |stack|
        Userstack.create(user_id: id, stack_id: stack) 
      end
    end
    
    response = create_response(true, 200, nil , user)
    response.to_json
  end

  post '/users/updatelinks/:id' do
    id = params[:id]
    data = JSON.parse(request.body.read)
    user = User.find(id)

    # puts data

    ActiveRecord::Base.transaction do
  
      user.userlinks.destroy_all

      data["links"].each do |link_data|
        Userlink.create(name: link_data["platform"], user_id: id, link_url: link_data["link"])
      end
      
      response = create_response(true, 201, 'Updated successfully', nil)
      response.to_json

    end

  end

end
 
  