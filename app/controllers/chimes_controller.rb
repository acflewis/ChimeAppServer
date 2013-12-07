class ChimesController < ApplicationController

  def new
    
  end
  
  def create
    @chime = Chime.new(params[:chime])
    @chime.user_id = current_user.id
    if @chime.save!
      render :json => @chime
    else
      render :json => @chime.errors.full_messages
    end
  end
  
  def edit
    
  end
  
  def update
      @chime = Chime.find(params[:id])
      
      if @chime.update_attributes(params[:chime])
          render :json => @chime.to_json
      else 
          render :json => @chime.errors.full_messages, :status => 304
      end      
  end
  
  def destroy
    chime = Chime.find(params[:id])
    chime.destroy
    head :ok
  end
  
  def show
    chime = Chime.find(params[:id])
    render :json => chime, :include => [:user, :resonates]
  end
  
  def index
    render :json => Chime.where(cause_id: params[:cause_id]), :include => [:user, :resonates]
  end
  
  
end

