class SliderDeposController < ApplicationController
  before_action :set_slider_depo, only: [:show, :edit, :update, :destroy]

  # GET /slider_depos
  # GET /slider_depos.json
  def index
    @slider_depos = SliderDepo.all
  end

  # GET /slider_depos/1
  # GET /slider_depos/1.json
  def show
  end

  # GET /slider_depos/new
  def new
    @slider_depo = SliderDepo.new
  end

  # GET /slider_depos/1/edit
  def edit
  end

  # POST /slider_depos
  # POST /slider_depos.json
  def create
    @slider_depo = SliderDepo.new(slider_depo_params)

    respond_to do |format|
      if @slider_depo.save
        format.html { redirect_to @slider_depo, notice: 'Slider depo was successfully created.' }
        format.json { render :show, status: :created, location: @slider_depo }
      else
        format.html { render :new }
        format.json { render json: @slider_depo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slider_depos/1
  # PATCH/PUT /slider_depos/1.json
  def update
    respond_to do |format|
      if @slider_depo.update(slider_depo_params)
        format.html { redirect_to @slider_depo, notice: 'Slider depo was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider_depo }
      else
        format.html { render :edit }
        format.json { render json: @slider_depo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slider_depos/1
  # DELETE /slider_depos/1.json
  def destroy
    @slider_depo.destroy
    respond_to do |format|
      format.html { redirect_to slider_depos_url, notice: 'Slider depo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider_depo
      @slider_depo = SliderDepo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_depo_params
      params.require(:slider_depo).permit(:img, :link)
    end
end
