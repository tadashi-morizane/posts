class AdminsController < ApplicationController
  def new
  
    @admin = User.new
  end
  
   def create
    @user = User.find_by(email: params[:user][:email].downcase, admin: true)
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:info] = "logged in as #{@user.name}"
      redirect_to '/admin'
    else
      flash[:danger] = 'invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  def index
 end

  
  private


  def user_params
      params.require(:user).permit(:email, :password)
  end                               

end
