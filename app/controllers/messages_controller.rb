class MessagesController < ApplicationController
  def create
    @tie = Tie.find(params[:tie_id])
    @message = Message.new(message_params)
    @message.tie = @tie
    @message.user = current_user
    if @message.save
      # send to the channel (TieChannel)
      TieChannel.broadcast_to(
        @tie,
        render_to_string(partial: "message", locals: { message: @message })
      )

      redirect_to tie_path(@tie, anchor: "message-#{@message.id}")
    else
      render "ties/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
