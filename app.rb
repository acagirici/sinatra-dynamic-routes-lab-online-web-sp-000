require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    reverse = @user_name.reverse
    reverse.to_s
  end
  
  get '/say/:number/:phrase'
  
  
end