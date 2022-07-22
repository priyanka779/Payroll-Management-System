class MessagesController < ApplicationController
  def create
    message =current_user.messages.create(message_params)
    ActionCable.server.broadcast('chatroom_channel', {mod_message: message_render(message)})
  end
  private

  def message_params
    params.require(:message).permit(:body)
  end
  def message_render(message)
    render(partial: 'message', locals:{message: message})
  end
end
