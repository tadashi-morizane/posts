class MessagesController < ApplicationController
  include ApplicationHelper
  
  def index
   
    # Messageを全て取得する。
    @messages = Message.all
  end
  
  def show
     @message = Message.find(params[:id])
  end
   
  private

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to admin_login_url
    end
  end
end