class ShiftsController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  def index
    @shifts = Shift.all
  end

  def new
    # @shift = Shift.new
    @form = Form::ShiftCollection.new
  end

  def create!
    binding.pry
    @form = Form::ShiftCollection.new(shift_collection_params)
    if @form.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def confirm
  #   @shift = Shift.new(shift_params)
  #   render :new if @shift.invalid?
  # end


  private

  def shift_collection_params
    params
      .require(:form_shift_collection)
      .permit(shifts_attributes: [:start_time, :end_time])
  end

  # def shift_collection_params
  #   params.require(:form_shift_collection).premit(shifts_attributes: [:start_time, :end_time].merge(user_id: current_user.id))
  # end

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