class Admin::SessionsController < ApplicationController
  def new
    @admin = User.new
  end
  
   def create
    @user = User.find_by(email: params[:user][:email].downcase, admin: true)
       # binding.pry
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:info] = "logged in as #{@user.name}"
      redirect_to admin_messages_url
    else
      flash[:danger] = 'invalid email/password combination'
      @admin = User.new 
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
