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
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def finished?
    true
  end
  
  def status
    @booking = Booking.find(params[:booking_id])
    authorize @booking
  end
  
  private
  
  def booking_params
    params.require(:booking).permit(:address, :start_date)
  end

end
