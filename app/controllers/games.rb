post '/games' do
  redirect "/games/search/#{params[:search]}"
end

get '/games/:id' do
  @game = Game.find(params[:id])
  erb :'/games/show'
end
