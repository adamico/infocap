class InfosController < ApplicationController
  before_filter :find_info, :except => [:index, :new, :create]

  def index
    @infos = Info.all
  end
  
  def show
  end
  
  def new
    @info = Info.new
  end
  
  def create
    @info = Info.new(params[:info])
    if @info.save
      flash[:notice] = "Successfully created info."
      redirect_to @info
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @info.update_attributes(params[:info])
      flash[:notice] = "Successfully updated info."
      redirect_to @info
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @info.destroy
    flash[:notice] = "Successfully destroyed info."
    redirect_to infos_url
  end

  private
  def find_info
    @info = Info.find(params[:id])
  end
end
