class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end
  
  def show
    @theme = Theme.find(params[:id])
  end
  
  def new
    @theme = Theme.new
  end
  
  def create
    @theme = Theme.new(params[:theme])
    if @theme.save
      flash[:notice] = "Successfully created theme."
      redirect_to @theme
    else
      render :action => 'new'
    end
  end
  
  def edit
    @theme = Theme.find(params[:id])
  end
  
  def update
    @theme = Theme.find(params[:id])
    if @theme.update_attributes(params[:theme])
      flash[:notice] = "Successfully updated theme."
      redirect_to @theme
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy
    flash[:notice] = "Successfully destroyed theme."
    redirect_to themes_url
  end
end
