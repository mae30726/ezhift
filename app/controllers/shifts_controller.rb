class ShiftsController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  def index
  end

  def new
  end

  def create
  end

  # def edit
  #   @shift = Shift.find(params[:id])
  #   @doctor = Doctor.find(params[:id])
  # end

  # def update
  #   @shift = Shift.find(params[:id])
  #   if @shift.update(user_id: current_user.id)
  #     redirect_to admin_path(@shift.admin_id)
  #   else
  #     render :edit
  #   end
  # end

end