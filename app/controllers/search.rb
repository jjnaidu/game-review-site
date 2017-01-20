get '/games/search/:search' do
  name = params[:search]
  @games = Game.where("name LIKE ?", "%#{name}%")
  erb :'/games/index'
end
