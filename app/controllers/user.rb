get '/register' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "users/profile"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/profile' do
  erb :'users/profile'
end

get '/users/:id' do
  @user = User.find_by_id(params[:id])
  erb :'users/show'
end
