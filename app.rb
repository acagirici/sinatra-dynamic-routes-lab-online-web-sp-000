require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    reverse = @user_name.reverse
    reverse
  end
  
  get '/square/:number' do
    
  
  end
  
  get '/say/:number/:phrase' do
    @numbers = params[:number]
    @phrase = params[:phrase]
    phrase_multp = @number.to_i * @phrase.to_s
    phrase_multp.to_s
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  
  end
  
  get '/:operation/:number1/:number2' do
  
  end
end