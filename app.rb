require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @loop_num = params[:number].to_i
    array = []
    @loop_num.times do
      array << params[:phrase]
    end
    array.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num = 0
    if params[:operation] == "add"
      num = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      num = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      num = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      num = params[:number1].to_i / params[:number2].to_i
    end
    "#{num}"
  end
end