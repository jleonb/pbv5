class SliderRestaController < ApplicationController
  before_action :set_slider_restum, only: [:show, :edit, :update, :destroy]

  # GET /slider_resta
  # GET /slider_resta.json
  def index
    @slider_resta = SliderRestum.all
  end

  # GET /slider_resta/1
  # GET /slider_resta/1.json
  def show
  end

  # GET /slider_resta/new
  def new
    @slider_restum = SliderRestum.new
  end

  # GET /slider_resta/1/edit
  def edit
  end

  # POST /slider_resta
  # POST /slider_resta.json
  def create
    @slider_restum = SliderRestum.new(slider_restum_params)

    respond_to do |format|
      if @slider_restum.save
        format.html { redirect_to @slider_restum, notice: 'Slider restum was successfully created.' }
        format.json { render :show, status: :created, location: @slider_restum }
      else
        format.html { render :new }
        format.json { render json: @slider_restum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slider_resta/1
  # PATCH/PUT /slider_resta/1.json
  def update
    respond_to do |format|
      if @slider_restum.update(slider_restum_params)
        format.html { redirect_to @slider_restum, notice: 'Slider restum was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider_restum }
      else
        format.html { render :edit }
        format.json { render json: @slider_restum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slider_resta/1
  # DELETE /slider_resta/1.json
  def destroy
    @slider_restum.destroy
    respond_to do |format|
      format.html { redirect_to slider_resta_url, notice: 'Slider restum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider_restum
      @slider_restum = SliderRestum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_restum_params
      params.require(:slider_restum).permit(:img, :link)
    end
end
