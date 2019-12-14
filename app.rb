require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get '/reversename/:name' do
      @reverse_name = params[:name].reverse
      @reverse_name
    end

    get '/square/:number' do
      @square_number = params[:number].to_i ** 2
      @square_number.to_s
    end

    get '/say/:number/:phrase' do
      str = ""
      @num = params[:number].to_i
      @phrase = params[:phrase]
      @num.times { str += "#{@phrase}\n" }
      str
    end
end
