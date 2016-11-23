class AdminsController < ApplicationController
  before_action :logged_in_user, only: [:index]
  
  def index
     @admin = User.find(1)
  end
 
  def new
    @admin = User.new
  end
  
   def create
       @user = User.find_by(email: params[:user][:email].downcase, admin: true)
       # binding.pry
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      p  session[:user_id] 
      flash[:info] = "logged in as #{@user.name}"
      redirect_to '/admin'
    else
      flash[:danger] = 'invalid email/password combination'
      @admin = User.new 
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  
  private


  def user_params
      params.require(:user).permit(:email, :password)
  end                               

end
