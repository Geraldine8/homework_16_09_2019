require('sinatra')
require('sinatra/contrib/all')
require('pry')


require_relative('./models/game.rb')
also_reload('./models/*')


get '/instructions' do
  erb (:welcome_page)
end

#Form - play_game
get '/game' do
  erb (:play_game)
end

#
# get '/game/result/:play1/:play2' do
#   @result = Game.play(params[:play1], params[:play2])
#   erb (:result)
# end

post '/game/result/' do
  @result = Game.play(params[:player1], params[:player2])
  erb (:result)
end
