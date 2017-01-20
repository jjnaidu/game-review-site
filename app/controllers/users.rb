get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(first_name: params[:first_name], last_name: params[:last_name],
    email: params[:email], password: params[:password])
  if @user.save
    login(@user)
    puts "Your user was saved"
    redirect "/users/#{session[:user_id]}"
  else
    puts "ERROR: Your user was not saved"
    redirect '/users/new'
  end
end

get '/users/:id' do
  @user = current_user
  erb :'/users/profile'
end
