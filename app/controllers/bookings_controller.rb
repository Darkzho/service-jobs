class BookingsController < ApplicationController
  def index
  end
  
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
    @booking.start_date = Time.now 
    @booking.end_date = Time.now 
    authorize @booking
    if @booking.save
      redirect_to service_path(@service)
    else
      render :edit
    end
  end
  
  def show
  end

  def booking_params
    params.permit(:start_date, :end_date, :service_id, :user_id)
  end

end
