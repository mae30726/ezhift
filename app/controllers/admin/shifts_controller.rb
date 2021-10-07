class Admin::ShiftsController < ApplicationController
  before_action :if_not_admin
  # before_action :set_restaurant, only: [:show, :edit, :destroy]

  # def new
  #   @shift = Shift.new
  # end

  # def create
  #   @shift = Shift.new(shift_params)
  #   if @shift.save
  #     redirect_to adimin_path(current_user.id)
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @shift = Shift.find(params[:id])
  # end

  # def update
  #   @shift = Shift.find(params[:id])
  #   if @shift.update(shift_params)
  #     redirect_to admin_path(current_user.id)
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @shift = Shift.find(params[:id])
  #   if @shift.destroy
  #     redirect_to admim_path(current_user.id)
  #     else
  #     render :show
  #   end
  # end

  private

  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  # def shift_params
  #   params.require(:shift).permit(:start_time, :end_time).merge(admin_id: current_user.id)
  # end

  # def set_shift
  #   @shift = Shift.find(params[:id])
  # end
end
