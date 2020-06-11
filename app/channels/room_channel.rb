class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
    stream_for current_user.group
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
     user = User.find_by(id: current_user.id)
     user.group = data['group']
     user.save
     Post.create!(content: data['message'], user_id: current_user.id, group: data['group'])
  end