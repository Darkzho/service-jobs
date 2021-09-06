class ReviewsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @reviews = Review.all
    if @user.owner
      authorize @reviews
    else
      redirect_to root_path
    end
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create 
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user_id = current_user.id
    authorize @review
    if @review.save!
      redirect_to user_reviews_path(@booking.service.user_id)
    else
      render :new
    end
  end

  private 

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
