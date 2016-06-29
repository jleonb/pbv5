class CRestaurantsController < ApplicationController
  before_action :set_c_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /c_restaurants
  # GET /c_restaurants.json
  def index
    @c_restaurants = CRestaurant.all
    @slider_restaurants = SliderRestaurant.all
    @estandars = Estandar.all
    @user = current_user
  end

  # GET /c_restaurants/1
  # GET /c_restaurants/1.json
  def show
  end

  # GET /c_restaurants/new
  def new
    @c_restaurant = CRestaurant.new
  end

  # GET /c_restaurants/1/edit
  def edit
  end

  # POST /c_restaurants
  # POST /c_restaurants.json
  def create
    @c_restaurant = CRestaurant.new(c_restaurant_params)

    respond_to do |format|
      if @c_restaurant.save
        format.html { redirect_to @c_restaurant, notice: 'C restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @c_restaurant }
      else
        format.html { render :new }
        format.json { render json: @c_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_restaurants/1
  # PATCH/PUT /c_restaurants/1.json
  def update
    respond_to do |format|
      if @c_restaurant.update(c_restaurant_params)
        format.html { redirect_to @c_restaurant, notice: 'C restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @c_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_restaurants/1
  # DELETE /c_restaurants/1.json
  def destroy
    @c_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to c_restaurants_url, notice: 'C restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_restaurant
      @c_restaurant = CRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_restaurant_params
      params.require(:c_restaurant).permit(:img, :link)
    end
end
