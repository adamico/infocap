class PhoneNumbersController < ApplicationController
  before_filter :find_info
  before_filter :find_phone_number, :except => [:index, :new, :create]

  def index
    @phone_numbers = @info.phone_numbers
  end

  def new
    @phone_number = @info.phone_numbers.build
  end

  def create
    @phone_number = @info.phone_numbers.build(params[:phone_number])
    if @info.save
      flash[:notice] = "Successfully created phone number."
      redirect_to info_url(@phone_number.info_id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @info.update_attributes(params[:phone_number])
      flash[:notice] = "Successfully updated article."
      redirect_to info_url(@phone_number.info_id)
    else
      render :edit
    end
  end

  def destroy
    @phone_number.destroy
    flash[:notice] = "Successfully destroyed phone_number."
    redirect_to info_url(@phone_number.info_id)
  end

  private
  def find_info
    @info = Info.find(params[:info_id])
  end

  def find_phone_number
    @phone_number = PhoneNumber.find(params[:id])
  end
end
