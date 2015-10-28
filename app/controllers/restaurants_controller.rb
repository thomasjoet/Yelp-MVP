class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private
  def set_restaurant
    id = params[:restaurant_id] || params[:id]
    @restaurant = Restaurant.find(id)
  end
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :category)
  end
end
