class MessageChannel < ApplicationCable::Channel

  def subscribed
    stream_from "public_channel"
  end

  def unsubscribed
    # Any cleanup need when channel is unsubscribed
  end
end