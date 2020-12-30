require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    reverse = @user_name.reverse
    reverse
  end
  
  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    square.to_s
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    phrase_multp = @phrase * @number.to_i
    phrase_multp
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    words = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    words
  end
  
  get '/:operation/:number1/:number2' do
    @operation = [:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    case operation
      when add
        (@number1 + @number2).to_s
      when subtract
        (@number1 - @number2).to_s
      when multiply
        (@number1 * @number2).to_s
      when divide
        (@number1 / @number2).to_s
    end
  end
end