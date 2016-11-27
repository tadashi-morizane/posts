class StaticPagesController < ApplicationController
  
  
  
  def home
    
    
   @messages = Message.all.order(created_at: :desc).page(params[:page]).per(5) # この行を追加    
    
    
    
  end
  
  def tie
  end
  
  def menu
  end
  

  def contact
  end    
  
  
end
