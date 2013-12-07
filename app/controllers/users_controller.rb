class UsersController < ApplicationController
  
  def show
    @user = current_user
    @chimes = Chime.find_by_user_id(current_user.id) 
    redirect_to users_url
    # render :json => @user
    # render :json => {
 #        :chimes => @chimes,
 #        :user => current_user
 #     }
  end
  
  def index
    @users = User.all
    render :json => @users
  end
  
end
