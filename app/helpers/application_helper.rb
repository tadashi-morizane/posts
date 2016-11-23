module ApplicationHelper
    
    
    
    def current_user
    p session[:user_id]
    p "msg"
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end 
    
    
end
