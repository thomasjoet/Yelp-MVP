class ReviewsController < ApplicationController
  before_action :set_restaurant

  def create
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
