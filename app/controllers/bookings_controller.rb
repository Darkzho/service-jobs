class BookingsController < ApplicationController
  def index
  end
  
  def new
    @booking = Booking.new
    authorize @booking   
  end

  def create 
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_param)
    @booking.service = @service
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end
  
  def show
  end

  def booking_param
    params.require(:booking).permit(:start_date, :end_date, :service_id, :user_id)
  end
end
