class SliderDentalsController < ApplicationController
  before_action :set_slider_dental, only: [:show, :edit, :update, :destroy]

  # GET /slider_dentals
  # GET /slider_dentals.json
  def index
    @slider_dentals = SliderDental.all
  end

  # GET /slider_dentals/1
  # GET /slider_dentals/1.json
  def show
  end

  # GET /slider_dentals/new
  def new
    @slider_dental = SliderDental.new
  end

  # GET /slider_dentals/1/edit
  def edit
  end

  # POST /slider_dentals
  # POST /slider_dentals.json
  def create
    @slider_dental = SliderDental.new(slider_dental_params)

    respond_to do |format|
      if @slider_dental.save
        format.html { redirect_to @slider_dental, notice: 'Slider dental was successfully created.' }
        format.json { render :show, status: :created, location: @slider_dental }
      else
        format.html { render :new }
        format.json { render json: @slider_dental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slider_dentals/1
  # PATCH/PUT /slider_dentals/1.json
  def update
    respond_to do |format|
      if @slider_dental.update(slider_dental_params)
        format.html { redirect_to @slider_dental, notice: 'Slider dental was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider_dental }
      else
        format.html { render :edit }
        format.json { render json: @slider_dental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slider_dentals/1
  # DELETE /slider_dentals/1.json
  def destroy
    @slider_dental.destroy
    respond_to do |format|
      format.html { redirect_to slider_dentals_url, notice: 'Slider dental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider_dental
      @slider_dental = SliderDental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_dental_params
      params.require(:slider_dental).permit(:name, :img, :link)
    end
end
