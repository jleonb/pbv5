class EstandarDestacadosController < ApplicationController
  before_action :set_estandar_destacado, only: [:show, :edit, :update, :destroy]

  # GET /estandar_destacados
  # GET /estandar_destacados.json
  def index
    @estandar_destacados = EstandarDestacado.all
    @user = current_user
  end

  # GET /estandar_destacados/1
  # GET /estandar_destacados/1.json
  def show
  end

  # GET /estandar_destacados/new
  def new
    @estandar_destacado = EstandarDestacado.new
  end

  # GET /estandar_destacados/1/edit
  def edit
  end

  # POST /estandar_destacados
  # POST /estandar_destacados.json
  def create
    @estandar_destacado = EstandarDestacado.new(estandar_destacado_params)

    respond_to do |format|
      if @estandar_destacado.save
        format.html { redirect_to @estandar_destacado, notice: 'Estandar destacado was successfully created.' }
        format.json { render :show, status: :created, location: @estandar_destacado }
      else
        format.html { render :new }
        format.json { render json: @estandar_destacado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estandar_destacados/1
  # PATCH/PUT /estandar_destacados/1.json
  def update
    respond_to do |format|
      if @estandar_destacado.update(estandar_destacado_params)
        format.html { redirect_to @estandar_destacado, notice: 'Estandar destacado was successfully updated.' }
        format.json { render :show, status: :ok, location: @estandar_destacado }
      else
        format.html { render :edit }
        format.json { render json: @estandar_destacado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estandar_destacados/1
  # DELETE /estandar_destacados/1.json
  def destroy
    @estandar_destacado.destroy
    respond_to do |format|
      format.html { redirect_to estandar_destacados_url, notice: 'Estandar destacado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estandar_destacado
      @estandar_destacado = EstandarDestacado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estandar_destacado_params
      params.require(:estandar_destacado).permit(:img, :link)
    end
end
