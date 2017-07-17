require('sinatra')
require('sinatra/contrib/all')
# require_relative('./models/rock_paper')
require('json')

get '/' do
  erb(:home)
end


# get '/rock-paper-scissors' do
#     result = 1 + rand(3)
#     return result.to_s
# end


get '/rock-paper-scissors' do
  content_type(:json)
  winner = 1 + rand(3)
  return winner.to_s
  
  # winner = RockPaperScissor.new(params[:num1].to_i, params[:num2].to_i, params[:num3].to_i)
  results=winner
  
     if results == '1'
        puts "You got paper!" 
     elsif results == '2'
        puts  "You got scissors"
     else
        puts "You got rock - you win!!"
     end   
  
  return results.to_json
end




