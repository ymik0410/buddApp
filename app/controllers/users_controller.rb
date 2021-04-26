class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def edit
  end

  def update
    @user.update(user_params)

    # WE HAVE TO CHANGE IT AFTER CREATING THE TOP_MATCHES AND/OR BUDDYSHIPS
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :introduction, :goalDescription, :photo)
  end
end
