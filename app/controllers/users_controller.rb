class UsersController < ApplicationController
  
  def show
    if current_user
    
    @user = current_user
    @chimes = Chime.find_all_by_user_id(current_user.id) 
    render :json => @chimes
   else
     @user = User.find(2)
     @chimes = Chime.find_all_by_user_id(2) 
     render :json => @chimes
     # render :json => "Please Login"
   end
  end
  
  def index
    @users = User.all
    render :json => @users
  end
  
end
