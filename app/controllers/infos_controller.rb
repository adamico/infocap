class InfosController < ApplicationController
  before_filter :find_info, :except => [:index, :new, :create]
  before_filter :find_sub_category, :except => [:edit, :update, :destroy]

  def index
    @infos = @sub_category.infos # || Info.all
  end

  def new
    @info = @sub_category.infos.build
  end

  def create
    @info = @sub_category.infos.build(params[:info])
    if @info.save
      flash[:notice] = "Successfully created info."
      redirect_to sub_category_url(@info.sub_category_id)
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @info.update_attributes(params[:info])
      flash[:notice] = "Successfully updated info."
      redirect_to sub_category_url(@info.sub_category_id)
    else
      render :action => 'edit'
    end
  end

  def destroy
    @info.destroy
    flash[:notice] = "Successfully destroyed info."
    redirect_to sub_category_url(@info.sub_category_id)
  end

  private

  def find_info
    @info = Info.find(params[:id])
  end

  def find_sub_category
    @sub_category = SubCategory.find(params[:sub_category_id])
  end
end
