class BuddyshipsController < ApplicationController
  def new
    @same_goal_available = User.joins(:histories).where(histories:{goal_id:current_user.current_goal.id}).where.not(histories:{user_id: current_user.id}).where(histories:{end_date: nil})
  end

  def create
    @buddy = params["buddy"]
  end
end
