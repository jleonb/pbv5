class SliderRestaurantsController < ApplicationController
  before_action :set_slider_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /slider_restaurants
  # GET /slider_restaurants.json
  def index
    @slider_restaurants = SliderRestaurant.all
  end

  # GET /slider_restaurants/1
  # GET /slider_restaurants/1.json
  def show
  end

  # GET /slider_restaurants/new
  def new
    @slider_restaurant = SliderRestaurant.new
  end

  # GET /slider_restaurants/1/edit
  def edit
  end

  # POST /slider_restaurants
  # POST /slider_restaurants.json
  def create
    @slider_restaurant = SliderRestaurant.new(slider_restaurant_params)

    respond_to do |format|
      if @slider_restaurant.save
        format.html { redirect_to @slider_restaurant, notice: 'Slider restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @slider_restaurant }
      else
        format.html { render :new }
        format.json { render json: @slider_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slider_restaurants/1
  # PATCH/PUT /slider_restaurants/1.json
  def update
    respond_to do |format|
      if @slider_restaurant.update(slider_restaurant_params)
        format.html { redirect_to @slider_restaurant, notice: 'Slider restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @slider_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slider_restaurants/1
  # DELETE /slider_restaurants/1.json
  def destroy
    @slider_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to slider_restaurants_url, notice: 'Slider restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider_restaurant
      @slider_restaurant = SliderRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_restaurant_params
      params.require(:slider_restaurant).permit(:img, :link)
    end
end
