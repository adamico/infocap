class InfosController < ApplicationController
  before_filter :find_info, :except => [:index, :new, :create]
  before_filter :find_category, :except => [:edit, :update, :destroy]

  def index
    @infos = @category.infos # || Info.all
  end

  def new
    @info = @category.infos.build
  end

  def create
    @info = @category.infos.build(params[:info])
    if @info.save
      flash[:notice] = "Successfully created info."
      redirect_to category_url(@info.category_id)
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @info.update_attributes(params[:info])
      flash[:notice] = "Successfully updated info."
      redirect_to category_url(@info.category_id)
    else
      render :action => 'edit'
    end
  end

  def destroy
    @info.destroy
    flash[:notice] = "Successfully destroyed info."
    redirect_to category_url(@info.category_id)
  end

  private

  def find_info
    @info = Info.find(params[:id])
  end

  def find_category
    @category = Category.find(params[:category_id])
  end
end
