class CDentalsController < ApplicationController
  before_action :set_c_dental, only: [:show, :edit, :update, :destroy]

  # GET /c_dentals
  # GET /c_dentals.json
  def index
    @c_dentals = CDental.all
    @slider_dentals = SliderDental.all
    @estandars = Estandar.all
  end

  # GET /c_dentals/1
  # GET /c_dentals/1.json
  def show
  end

  # GET /c_dentals/new
  def new
    @c_dental = CDental.new
  end

  # GET /c_dentals/1/edit
  def edit
  end

  # POST /c_dentals
  # POST /c_dentals.json
  def create
    @c_dental = CDental.new(c_dental_params)

    respond_to do |format|
      if @c_dental.save
        format.html { redirect_to @c_dental, notice: 'C dental was successfully created.' }
        format.json { render :show, status: :created, location: @c_dental }
      else
        format.html { render :new }
        format.json { render json: @c_dental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_dentals/1
  # PATCH/PUT /c_dentals/1.json
  def update
    respond_to do |format|
      if @c_dental.update(c_dental_params)
        format.html { redirect_to @c_dental, notice: 'C dental was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_dental }
      else
        format.html { render :edit }
        format.json { render json: @c_dental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_dentals/1
  # DELETE /c_dentals/1.json
  def destroy
    @c_dental.destroy
    respond_to do |format|
      format.html { redirect_to c_dentals_url, notice: 'C dental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_dental
      @c_dental = CDental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_dental_params
      params.require(:c_dental).permit(:img, :link)
    end
end
