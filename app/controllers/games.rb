get '/games' do
  @games = Game.order('rating DESC')
  erb :'/games/list'
end

post '/games' do
  redirect "/games/search/#{params[:search]}"
end

get '/games/:id' do
  @game = Game.find(params[:id])
  @reviews = Review.where(game_id: params[:id])
  @reviewed = Review.find_by(user_id: current_user.id, game_id: params[:id])
  @favorited = Favorite.find_by(user_id: current_user.id, game_id: params[:id])
  erb :'/games/show'
end
