get '/login' do
  erb :'sessions/new'
end

post '/sessions' do
  user = User.find_by_username(params[:username]).try(:authenticate, params[:password])
  if user
    session[:user_id] = user.id
    redirect '/albums'
  else
    @errors = ["Invalid username or password."]
    erb :'sessions/new'
  end
end

get '/logout' do
  session.clear
  redirect '/albums'
end
