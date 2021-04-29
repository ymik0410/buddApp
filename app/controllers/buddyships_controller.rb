class BuddyshipsController < ApplicationController
  def new
    @same_goal_available = User.joins(:histories).where(histories:{goal_id:current_user.current_goal.id}).where.not(histories:{user_id: current_user.id}).where(histories:{end_date: nil})
    @same_goal_available = @same_goal_available.select do |user|
      user.buddyships.empty?
    end
  end

  def create
    @buddy = User.find(params["buddy"])
    @buddyship = Buddyship.new(user1_id: @buddy.id, user2_id: current_user.id)
    @buddyship.save
    redirect_to user_path
  end

  def show
    @buddyship = Buddyship.find(params[:id])
  end
end
