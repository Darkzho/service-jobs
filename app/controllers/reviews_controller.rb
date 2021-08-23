class ReviewsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def create 
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to user_reviews_path(@booking.service.user_id)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    authorize @review
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    authorize @review
    if @review.save!
      redirect_to reviews_path(@review)
    else
      render :edit
    end
  end

  private 

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
