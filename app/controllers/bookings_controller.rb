class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @users = User.all
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

    authorize @booking
    if @booking.save!
      redirect_to order_booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    authorize @booking
    if @booking.save!
      redirect_to bookings_path
    else
      render :edit
    end
  end

  def show
    @review = Review.new
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def finished?
    true
  end

  # Routes custom

  def status
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def chat
    @booking = Booking.find(params[:id])
    @user = current_user
    authorize @booking
  end

  def order
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:address, :start_date, :end_date)
  end

end
