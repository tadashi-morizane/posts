class MessagesController < ApplicationController
  
  def index
    # Messageを全て取得する。
    
    @messages = Message.all.order(created_at: :desc).page(params[:page]).per(10) # この行を追加
  end
  
  def show
     @message = Message.find(params[:id])
  end

end