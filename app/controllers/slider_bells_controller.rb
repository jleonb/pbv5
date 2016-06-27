class SliderBellsController < ApplicationController
  before_action :set_slider_bell, only: [:show, :edit, :update, :destroy]

  # GET /slider_bells
  # GET /slider_bells.json
  def index
    @slider_bells = SliderBell.all
  end

  # GET /slider_bells/1
  # GET /slider_bells/1.json
  def show
  end

  # GET /slider_bells/new
  def new
    @slider_bell = SliderBell.new
  end

  # GET /slider_bells/1/edit
  def edit
  end

  # POST /slider_bells
  # POST /slider_bells.json
  def create
    @slider_bell = SliderBell.new(slider_bell_params)

    respond_to do |format|
      if @slider_bell.save
        format.html { redirect_to @slider_bell, notice: 'Slider bell was successfully created.' }
        format.json { render :show, status: :created, location: @slider_bell }
      else
        format.html { render :new }
        format.json { render json: @slider_bell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slider_bells/1
  # PATCH/PUT /slider_bells/1.json
  def update
    respond_to do |format|
      if @slider_bell.update(slider_bell_params)
        format.html { redirect_to @slider_bell, notice: 'Slider bell was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider_bell }
      else
        format.html { render :edit }
        format.json { render json: @slider_bell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slider_bells/1
  # DELETE /slider_bells/1.json
  def destroy
    @slider_bell.destroy
    respond_to do |format|
      format.html { redirect_to slider_bells_url, notice: 'Slider bell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider_bell
      @slider_bell = SliderBell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_bell_params
      params.require(:slider_bell).permit(:img, :link)
    end
end
