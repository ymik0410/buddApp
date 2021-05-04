class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]

  def edit
  end

  def update
    @user.update(user_params)
    History.create(user: @user, goal_id: params["user"]["goals"], start_date: Date.today)
    if current_user.buddy.present?
      redirect_to user_path(current_user)
    else
      redirect_to new_buddyship_path
    end
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :introduction, :goal_description, :photo, :image, :date_of_birth, :country, :gender, :username, :language)
  end
end
