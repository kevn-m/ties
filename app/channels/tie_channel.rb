class TieChannel < ApplicationCable::Channel
  def subscribed
    tie = Tie.find(params[:id])
    stream_for tie
  end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end
end
