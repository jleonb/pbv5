class VermasController < ApplicationController
  before_action :set_verma, only: [:show, :edit, :update, :destroy]

  # GET /vermas
  # GET /vermas.json
  def index
    @vermas = Verma.all
  end

  # GET /vermas/1
  # GET /vermas/1.json
  def show
  end

  # GET /vermas/new
  def new
    @verma = Verma.new
  end

  # GET /vermas/1/edit
  def edit
  end

  # POST /vermas
  # POST /vermas.json
  def create
    @verma = Verma.new(verma_params)

    respond_to do |format|
      if @verma.save
        format.html { redirect_to @verma, notice: 'Verma was successfully created.' }
        format.json { render :show, status: :created, location: @verma }
      else
        format.html { render :new }
        format.json { render json: @verma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vermas/1
  # PATCH/PUT /vermas/1.json
  def update
    respond_to do |format|
      if @verma.update(verma_params)
        format.html { redirect_to @verma, notice: 'Verma was successfully updated.' }
        format.json { render :show, status: :ok, location: @verma }
      else
        format.html { render :edit }
        format.json { render json: @verma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vermas/1
  # DELETE /vermas/1.json
  def destroy
    @verma.destroy
    respond_to do |format|
      format.html { redirect_to vermas_url, notice: 'Verma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verma
      @verma = Verma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verma_params
      params.fetch(:verma, {})
    end
end
