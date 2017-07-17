require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rock_paper')
require('json')

get '/' do
  erb(:home)
end


get '/rock-paper-scissors' do
    result = 1 + rand(3)
    return result.to_s
end


get '/all/:num1/:num2/:num3' do
  content_type(:json)
  winner = RockPaperScissor.new(params[:num1].to_i, params[:num2].to_i, params[:num3].to_i)
  results=winner

  results=[1, 2, 3]
  
  
  if results==1; puts "You got paper!" end
  if results==2; puts "You got scissors!" end
  if results==3; puts "You got rock - you win!!" end

  return results.to_json
end




