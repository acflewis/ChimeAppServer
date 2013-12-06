class CausesController < ApplicationController

  def show
    @cause = Cause.find(params[:id])
    render :json => @cause
  end
  
  def index
    @causes = Cause.all
    # render :json => @causes
    render :index
  end
  
end