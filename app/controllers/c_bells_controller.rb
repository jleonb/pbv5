class CBellsController < ApplicationController
  before_action :set_c_bell, only: [:show, :edit, :update, :destroy]

  # GET /c_bells
  # GET /c_bells.json
  def index
    @c_bells = CBell.all
    @slider_bells = SliderBell.all
    @estandars = Estandar.all
    @user = current_user
  end

  # GET /c_bells/1
  # GET /c_bells/1.json
  def show
  end

  # GET /c_bells/new
  def new
    @c_bell = CBell.new
  end

  # GET /c_bells/1/edit
  def edit
  end

  # POST /c_bells
  # POST /c_bells.json
  def create
    @c_bell = CBell.new(c_bell_params)

    respond_to do |format|
      if @c_bell.save
        format.html { redirect_to @c_bell, notice: 'C bell was successfully created.' }
        format.json { render :show, status: :created, location: @c_bell }
      else
        format.html { render :new }
        format.json { render json: @c_bell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_bells/1
  # PATCH/PUT /c_bells/1.json
  def update
    respond_to do |format|
      if @c_bell.update(c_bell_params)
        format.html { redirect_to @c_bell, notice: 'C bell was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_bell }
      else
        format.html { render :edit }
        format.json { render json: @c_bell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_bells/1
  # DELETE /c_bells/1.json
  def destroy
    @c_bell.destroy
    respond_to do |format|
      format.html { redirect_to c_bells_url, notice: 'C bell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_bell
      @c_bell = CBell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_bell_params
      params.require(:c_bell).permit(:img, :link)
    end
end
