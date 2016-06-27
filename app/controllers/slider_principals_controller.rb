class SliderPrincipalsController < ApplicationController
  before_action :set_slider_principal, only: [:show, :edit, :update, :destroy]

  # GET /slider_principals
  # GET /slider_principals.json
  def index
    @slider_principals = SliderPrincipal.all
  end

  # GET /slider_principals/1
  # GET /slider_principals/1.json
  def show
  end

  # GET /slider_principals/new
  def new
    @slider_principal = SliderPrincipal.new
  end

  # GET /slider_principals/1/edit
  def edit
  end

  # POST /slider_principals
  # POST /slider_principals.json
  def create
    @slider_principal = SliderPrincipal.new(slider_principal_params)

    respond_to do |format|
      if @slider_principal.save
        format.html { redirect_to @slider_principal, notice: 'Slider principal was successfully created.' }
        format.json { render :show, status: :created, location: @slider_principal }
      else
        format.html { render :new }
        format.json { render json: @slider_principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slider_principals/1
  # PATCH/PUT /slider_principals/1.json
  def update
    respond_to do |format|
      if @slider_principal.update(slider_principal_params)
        format.html { redirect_to @slider_principal, notice: 'Slider principal was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider_principal }
      else
        format.html { render :edit }
        format.json { render json: @slider_principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slider_principals/1
  # DELETE /slider_principals/1.json
  def destroy
    @slider_principal.destroy
    respond_to do |format|
      format.html { redirect_to slider_principals_url, notice: 'Slider principal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider_principal
      @slider_principal = SliderPrincipal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_principal_params
      params.require(:slider_principal).permit(:img, :link)
    end
end
