class BookingsController < ApplicationController
  
  def new
    @service = Service.find(params[:service_id])
    @booking = Booking.new
    authorize @booking   
  end

  def create 
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = current_user
    authorize @booking
    if @booking.save!
      redirect_to service_booking_path(@service, @booking)
    else
      render :new
    end
  end
  
  def show
  end

  def booking_params
    params.require(:booking).permit(:address)
  end

end
