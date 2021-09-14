class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :status, :chat, :order]

  def index
    @bookings = Booking.all
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
  end

  def update
    @booking.update(booking_params)
    authorize @booking
    if @booking.save!
      redirect_to bookings_path
    else
      render :edit
    end
  end

  def finished?
    true
  end

  # Routes custom

  def status
    @markers = { lat: @booking.geocode[0], lng: @booking.geocode[1] }
    authorize @booking
  end

  def chat
    @user = current_user
    authorize @booking
  end

  def order
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:address, :start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
