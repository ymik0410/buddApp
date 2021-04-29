class BuddyshipChannel < ApplicationCable::Channel
  def subscribed
    buddyship = Buddyship.find(params[:id])
    stream_for buddyship
  end
end
