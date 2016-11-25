class Admin::MessagesController < ApplicationController
  
  before_action :logged_in_user
  
  
  def index
    # Messageを全て取得する。
    @messages = Message.all
  end
  
  def new
    @message = Message.new
  end  

  def create
    @message = Message.new(message_params)
    
    if @message.save
    
    
    redirect_to admin_messages_path , notice: 'メッセージを保存しました'
    
    else
      #  保存に失敗した場合は編集画面へ戻す
      render  'new'
    end
  end
  
  def edit
      @message = Message.find(params[:id])
  end
          # メッセージの編集
  def update
      @message = Message.find(params[:id])
      if @message.update(message_params)
      #  保存に成功した場合はトップページへリダイレクト 
      redirect_to admin_messages_path , notice: 'メッツセージを編集しました。'
    else
      #  保存に失敗した場合は編集画面へ戻す
      render  'edit'
    end
  end
  
  
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to admin_messages_path , notice: 'メッセージを削除しました'
  end  
  
  private
  
  def message_params
    params.require(:message).permit(:title, :body)
  end
end


    
