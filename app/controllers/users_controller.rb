class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]

  def edit
  end

  def update
    @user.update(user_params)
    History.create(user: @user, goal_id: params["user"]["goals"], start_date: Date.today)

    redirect_to user_path(current_user)
  end

  def show
    @daily_goal = DailyGoal.new
    @daily_goals = DailyGoal.all.order("created_at DESC")
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :introduction, :goal_description, :photo, :image, :date_of_birth, :country, :gender, :username, :language, :streak)
  end
end
