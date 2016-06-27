class CServsController < ApplicationController
  before_action :set_c_serv, only: [:show, :edit, :update, :destroy]

  # GET /c_servs
  # GET /c_servs.json
  def index
    @c_servs = CServ.all
    @slider_servs = SliderServ.all
    @estandars = Estandar.all
  end

  # GET /c_servs/1
  # GET /c_servs/1.json
  def show
  end

  # GET /c_servs/new
  def new
    @c_serv = CServ.new
  end

  # GET /c_servs/1/edit
  def edit
  end

  # POST /c_servs
  # POST /c_servs.json
  def create
    @c_serv = CServ.new(c_serv_params)

    respond_to do |format|
      if @c_serv.save
        format.html { redirect_to @c_serv, notice: 'C serv was successfully created.' }
        format.json { render :show, status: :created, location: @c_serv }
      else
        format.html { render :new }
        format.json { render json: @c_serv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_servs/1
  # PATCH/PUT /c_servs/1.json
  def update
    respond_to do |format|
      if @c_serv.update(c_serv_params)
        format.html { redirect_to @c_serv, notice: 'C serv was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_serv }
      else
        format.html { render :edit }
        format.json { render json: @c_serv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_servs/1
  # DELETE /c_servs/1.json
  def destroy
    @c_serv.destroy
    respond_to do |format|
      format.html { redirect_to c_servs_url, notice: 'C serv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_serv
      @c_serv = CServ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_serv_params
      params.require(:c_serv).permit(:img, :link)
    end
end
