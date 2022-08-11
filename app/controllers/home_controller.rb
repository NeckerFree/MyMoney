class HomeController < ApplicationController
  def index
    # session[:user_id]
    # @current_user = User.find(session[:user_id])
    @current_user = current_user
    puts 'Current user'
    puts @current_user
  end
end
