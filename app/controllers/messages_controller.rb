class MessagesController < ApplicationController
    before_action :set_chatroom
    
    def create
        message = @chatroom.messages.new(message_params)
        message.user = current_user
        message.save
        redirect_to @chatroom
        # if message.save
        #     redirect_to @chatroom
        # else
        # end
    end
    
    private
    def set_chatroom
        @chatroom = Chatroom.find(params[:chatroom_id])
    end
    
    def message_params
        params.require(:message).permit(:body)
    end
end