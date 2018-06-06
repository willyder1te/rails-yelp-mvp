class RestaurantsController < ApplicationController
  before_action :set_restaurant, only:[:show, :update, :destroy, :edit]

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def new
    @restaurant = Restaurant.new
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
