class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def update
    if current_user.update_attributes(user_params)
      flash[:notice] = "User information update"
    else
      flash[:error] = "Invalid user information"
    end
    redirect_to_edit_user_registration_path
  end
  
  private
  
  def user_params
    params.required(:user).permit(:name)
  end
end
