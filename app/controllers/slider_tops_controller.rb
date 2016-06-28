class SliderTopsController < ApplicationController
  before_action :set_slider_top, only: [:show, :edit, :update, :destroy]

  # GET /slider_tops
  # GET /slider_tops.json
  def index
    @slider_tops = SliderTop.all
  end

  # GET /slider_tops/1
  # GET /slider_tops/1.json
  def show
  end

  # GET /slider_tops/new
  def new
    @slider_top = SliderTop.new
  end

  # GET /slider_tops/1/edit
  def edit
  end

  # POST /slider_tops
  # POST /slider_tops.json
  def create
    @slider_top = SliderTop.new(slider_top_params)

    respond_to do |format|
      if @slider_top.save
        format.html { redirect_to @slider_top, notice: 'Slider top was successfully created.' }
        format.json { render :show, status: :created, location: @slider_top }
      else
        format.html { render :new }
        format.json { render json: @slider_top.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slider_tops/1
  # PATCH/PUT /slider_tops/1.json
  def update
    respond_to do |format|
      if @slider_top.update(slider_top_params)
        format.html { redirect_to @slider_top, notice: 'Slider top was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider_top }
      else
        format.html { render :edit }
        format.json { render json: @slider_top.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slider_tops/1
  # DELETE /slider_tops/1.json
  def destroy
    @slider_top.destroy
    respond_to do |format|
      format.html { redirect_to slider_tops_url, notice: 'Slider top was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider_top
      @slider_top = SliderTop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_top_params
      params.require(:slider_top).permit(:link, :img)
    end
end
