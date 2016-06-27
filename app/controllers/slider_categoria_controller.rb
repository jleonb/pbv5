class SliderCategoriaController < ApplicationController
  before_action :set_slider_categorium, only: [:show, :edit, :update, :destroy]

  # GET /slider_categoria
  # GET /slider_categoria.json
  def index
    @slider_categoria = SliderCategorium.all
  end

  # GET /slider_categoria/1
  # GET /slider_categoria/1.json
  def show
  end

  # GET /slider_categoria/new
  def new
    @slider_categorium = SliderCategorium.new
  end

  # GET /slider_categoria/1/edit
  def edit
  end

  # POST /slider_categoria
  # POST /slider_categoria.json
  def create
    @slider_categorium = SliderCategorium.new(slider_categorium_params)

    respond_to do |format|
      if @slider_categorium.save
        format.html { redirect_to @slider_categorium, notice: 'Slider categorium was successfully created.' }
        format.json { render :show, status: :created, location: @slider_categorium }
      else
        format.html { render :new }
        format.json { render json: @slider_categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slider_categoria/1
  # PATCH/PUT /slider_categoria/1.json
  def update
    respond_to do |format|
      if @slider_categorium.update(slider_categorium_params)
        format.html { redirect_to @slider_categorium, notice: 'Slider categorium was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider_categorium }
      else
        format.html { render :edit }
        format.json { render json: @slider_categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slider_categoria/1
  # DELETE /slider_categoria/1.json
  def destroy
    @slider_categorium.destroy
    respond_to do |format|
      format.html { redirect_to slider_categoria_url, notice: 'Slider categorium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider_categorium
      @slider_categorium = SliderCategorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_categorium_params
      params.require(:slider_categorium).permit(:img, :link, :categoria)
    end
end
