class ApplicationController < ActionController::Base
  def logged_in?
    session[:user_id]
  end

  def require_login
    redirect_to login_path unless logged_in?
  end

  def current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
end
