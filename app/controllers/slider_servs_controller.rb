class SliderServsController < ApplicationController
  before_action :set_slider_serv, only: [:show, :edit, :update, :destroy]

  # GET /slider_servs
  # GET /slider_servs.json
  def index
    @slider_servs = SliderServ.all
  end

  # GET /slider_servs/1
  # GET /slider_servs/1.json
  def show
  end

  # GET /slider_servs/new
  def new
    @slider_serv = SliderServ.new
  end

  # GET /slider_servs/1/edit
  def edit
  end

  # POST /slider_servs
  # POST /slider_servs.json
  def create
    @slider_serv = SliderServ.new(slider_serv_params)

    respond_to do |format|
      if @slider_serv.save
        format.html { redirect_to @slider_serv, notice: 'Slider serv was successfully created.' }
        format.json { render :show, status: :created, location: @slider_serv }
      else
        format.html { render :new }
        format.json { render json: @slider_serv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slider_servs/1
  # PATCH/PUT /slider_servs/1.json
  def update
    respond_to do |format|
      if @slider_serv.update(slider_serv_params)
        format.html { redirect_to @slider_serv, notice: 'Slider serv was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider_serv }
      else
        format.html { render :edit }
        format.json { render json: @slider_serv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slider_servs/1
  # DELETE /slider_servs/1.json
  def destroy
    @slider_serv.destroy
    respond_to do |format|
      format.html { redirect_to slider_servs_url, notice: 'Slider serv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider_serv
      @slider_serv = SliderServ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_serv_params
      params.require(:slider_serv).permit(:img, :link)
    end
end
