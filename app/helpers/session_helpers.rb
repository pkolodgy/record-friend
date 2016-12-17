def require_login
  redirect '/albums' unless current_user
end

def current_user
  @current_user ||= User.find_by_id(session[:user_id])
end
