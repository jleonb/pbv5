class CRestaController < ApplicationController
  before_action :set_c_restum, only: [:show, :edit, :update, :destroy]

  # GET /c_resta
  # GET /c_resta.json
  def index
    @c_resta = CRestum.all
  end

  # GET /c_resta/1
  # GET /c_resta/1.json
  def show
  end

  # GET /c_resta/new
  def new
    @c_restum = CRestum.new
  end

  # GET /c_resta/1/edit
  def edit
  end

  # POST /c_resta
  # POST /c_resta.json
  def create
    @c_restum = CRestum.new(c_restum_params)

    respond_to do |format|
      if @c_restum.save
        format.html { redirect_to @c_restum, notice: 'C restum was successfully created.' }
        format.json { render :show, status: :created, location: @c_restum }
      else
        format.html { render :new }
        format.json { render json: @c_restum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_resta/1
  # PATCH/PUT /c_resta/1.json
  def update
    respond_to do |format|
      if @c_restum.update(c_restum_params)
        format.html { redirect_to @c_restum, notice: 'C restum was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_restum }
      else
        format.html { render :edit }
        format.json { render json: @c_restum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_resta/1
  # DELETE /c_resta/1.json
  def destroy
    @c_restum.destroy
    respond_to do |format|
      format.html { redirect_to c_resta_url, notice: 'C restum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_restum
      @c_restum = CRestum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_restum_params
      params.require(:c_restum).permit(:img, :link)
    end
end
