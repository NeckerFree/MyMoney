class UsersController < ApplicationController
  # before_action :authenticate_user!
  before_action :logged_in_user

  def index
    @current_user = current_user
    # authorize! :read, User
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
