#THIS IS THE MAIN FILE OF THE APPLICATION 

require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.





  # post '/submit' do
    
  #   name = params[:name]
  #   message = params[:message]

  #   "Thanks Noah, you sent this message:#{message}"

  # end

  get '/names' do  
    names = params[:name]
    return "#{names}"
  end








  # get '/hello' do
  #   name = params[:name]

  #   return "Hello #{name}"
  # end 


  # get '/' do
  #   return "Hello!"
  # end

  # get '/posts' do
  #   return "A list of posts"
  # end


  # configure :development do
  #   register Sinatra::Reloader
  # end
end


# Route examples:

    # Incoming request: GET /todos/1

    # Sinatra decides which code to execute based on the incoming http request

      # GET /   => execute some code

      # GET /todos/1  => execute different code (*it will execute this one)

      # POST /todos/2  => executes different code



    # Incoming request: GET /posts

    # Sinatra checks each of the routes below if it matches the request
    # since itsn't present it will return a 404 as the route hasnt been found/ matched

      # GET /   => execute some code

      # GET /todos/1  => execute different code (*it will execute this one)

      # POST /todos/2  => executes different code