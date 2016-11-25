class MessagesController < ApplicationController
  
  def index
    # Messageを全て取得する。
    @messages = Message.all
  end
  
  def show
     @message = Message.find(params[:id])
  end

end