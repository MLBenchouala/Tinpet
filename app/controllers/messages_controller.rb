class MessagesController < ApplicationController
  def create
    match = Match.find(params[:match_id])
    @message = Message.new(message_params)
    @message.user = current_user
    @message.match = match
    if @message.save
      # We will use actionCable to broadcast the message html string later
      MatchChannel.broadcast_to(
        match,
        {
          html: render_to_string(partial: "message", locals: { message: @message }),
          # broadcast the current_user's id so it is possible to verify in the
          # stimulus controller if it corresponds or not with
          # the client's current_user
          user_id: @message.user.id
        }
      )
      head :ok
    else
      render 'matches#show', status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
