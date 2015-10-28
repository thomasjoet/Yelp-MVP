class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :chef ]

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
