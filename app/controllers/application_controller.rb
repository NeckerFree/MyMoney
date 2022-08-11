class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # attr_reader :current_user
  # protect_from_forgery with: :exception
  # include SessionsHelper
  # def logged_in?
  #   session[:user_id]
  # end

  # def require_login
  #   redirect_to login_path unless logged_in?
  # end
  # def user_is_logged_in
  #   if !session[:current_user]
  #       redirect_to login_path
  #   end
  # end

  # def current_user
  #   puts session[:current_user]
  #   return unless session[:user_id]
  #   @current_user ||= User.find(session[:user_id])
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name])
  end

  def after_sign_up_path_for(_resource_or_scope)
    new_user_session
  end
end
