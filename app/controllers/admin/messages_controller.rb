class Admin::MessagesController < ApplicationController
  
  include ApplicationHelper
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
    @message.save
    redirect_to admin_messages_path , notice: 'メッセージを保存しました'
  end
  
  def edit
      @message = Message.find(params[:id])
  
  end
          # メッセージの編集
  def update
      if  @message.update(message_params)
      #  保存に成功した場合はトップページへリダイレクト 
      redirect_to admin_messages_path , notice: 'メッツセージを編集しました。'
    else
      #  保存に失敗した場合は編集画面へ戻す
      render  'edit'
    end
  end
    
  
  private
  
  def message_params
    params.require(:message).permit(:title, :body)
  end
  ## ここまで
end


    private
  def logged_in_user
    p "log_in"
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to admin_login_url
    end
  end
