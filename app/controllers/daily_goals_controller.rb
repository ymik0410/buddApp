class DailyGoalsController < ApplicationController


  def create
    @daily_goal = DailyGoal.new(daily_goal_params)
    @daily_goal.user = current_user
    @daily_goal.done = false
    if @daily_goal.save
      redirect_to user_path(current_user)
    else
      render "users/show"
    end
  end

  def update
    @daily_goal = DailyGoal.find(params[:id])
    if @daily_goal.done
      @daily_goal.done = false
    else
      @daily_goal.done = true
    end
      @daily_goal.save
      redirect_to user_path(current_user)
  end

  def destroy
  @daily_goal = DailyGoal.find(params[:id])
  @daily_goal.destroy
  redirect_to user_path(current_user)
  end

  private

  def daily_goal_params
    params.require(:daily_goal).permit(:name)
  end
end
