class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end
  
  def index
    @reviews = Review.all
  end

  def create 
    @review = Review.new(review_params)
    authorize @review
    if @review.save!
      redirect_to reviews_path(@review)
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
