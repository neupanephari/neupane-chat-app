# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
    #stream_from 'messages'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    #ActionCable.server.broadcast 'room_channel', message: data['message']
    Message.create! content: data['message']
    
  end
  
   #private

  #def render_message(message)
    #ApplicationController.render(partial: 'messages/message',
                                 #locals: { 
                                  # message: message,
                                   #username: current_user})
  #end
end
