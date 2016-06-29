class CDeposController < ApplicationController
  before_action :set_c_depo, only: [:show, :edit, :update, :destroy]

  # GET /c_depos
  # GET /c_depos.json
  def index
    @c_depos = CDepo.all
    @estandars = Estandar.all
    @slider_depos = SliderDepo.all
    @user = current_user
  end

  # GET /c_depos/1
  # GET /c_depos/1.json
  def show
  end

  # GET /c_depos/new
  def new
    @c_depo = CDepo.new
  end

  # GET /c_depos/1/edit
  def edit
  end

  # POST /c_depos
  # POST /c_depos.json
  def create
    @c_depo = CDepo.new(c_depo_params)

    respond_to do |format|
      if @c_depo.save
        format.html { redirect_to @c_depo, notice: 'C depo was successfully created.' }
        format.json { render :show, status: :created, location: @c_depo }
      else
        format.html { render :new }
        format.json { render json: @c_depo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_depos/1
  # PATCH/PUT /c_depos/1.json
  def update
    respond_to do |format|
      if @c_depo.update(c_depo_params)
        format.html { redirect_to @c_depo, notice: 'C depo was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_depo }
      else
        format.html { render :edit }
        format.json { render json: @c_depo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_depos/1
  # DELETE /c_depos/1.json
  def destroy
    @c_depo.destroy
    respond_to do |format|
      format.html { redirect_to c_depos_url, notice: 'C depo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_depo
      @c_depo = CDepo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_depo_params
      params.require(:c_depo).permit(:img, :link)
    end
end
