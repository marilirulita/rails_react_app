class ReviewsController < ApplicationController
  protect_from_forgery with: :null_session

  def index 
    user_reviews = User.find_by(slug: params[:user_slug]).reviews
    render json: user_reviews
  end

  def create 
    review = Review.new(review_params)
    if review.save
      render json: review
    else
      render json: { error: review.errors.messages }, status: 422
    end
  end

  def destroy
    review = Review.find(params[:id])
    if review.destroy
      head :no_content
    else
      render json: { error: review.errors.messages }, status: 422
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :description, :score, :user_id)
  end
end
