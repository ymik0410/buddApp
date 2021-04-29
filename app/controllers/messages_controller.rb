class MessagesController < ApplicationController

  def create
    @buddyship = Buddyship.find(params[:buddyship_id])
    @message = Message.new(message_params)
    @message.buddyship = @buddyship
    @message.user = current_user

    if @message.save
      # send the the channel

      BuddyshipChannel.broadcast_to(
        @buddyship,
        render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to buddyship_path(@buddyship, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
