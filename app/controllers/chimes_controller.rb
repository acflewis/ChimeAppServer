class ChimesController < ApplicationController

  def new
    
  end
  
  def create
    @chime = Chime.new()
    @chime.reason = params[:reason]
    @chime.cause_id = params[:cause_id]
    @chime.user_id = 9
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
    render :json => chime
  end
  
  def index
    render :json => Chime.where(cause_id: params[:cause_id]).reverse_order
  end
  
  
end

