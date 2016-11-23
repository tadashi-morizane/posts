class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include ApplicationHelper
  
  
  protect_from_forgery with: :exception
  
    private
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to admin_login_url
    end
  end
end
