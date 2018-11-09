class ReviewsController < ApplicationController
  before_action :find_review, only: %i[destroy]
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.cocktail = Cocktail.find(params[:cocktail_id])
    if @review.save
      redirect_to cocktail_path(@review.cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = @review.cocktail
    @review.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
