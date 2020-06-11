def perform(message)
    group = message.group
     RoomChannel.broadcast_to(group, message: render_message(message))
  end

  private
    def render_message(message)
      ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message })
    end
end