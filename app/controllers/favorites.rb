post 'favorites' do
  Favorite.create(params[:favorite])
  redirect "/games/#{params[:favorite][:game_id]}"
end
