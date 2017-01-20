get '/session-viewer' do
  session.inspect
end

get '/login' do
  erb :'/sessions/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user.password == params[:password]
    login(@user)
    redirect "/users/#{@user.id}"
  else
    redirect '/users/new'
  end
end

get '/logout' do
  logout
  redirect '/'
end
