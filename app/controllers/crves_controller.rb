class CrvesController < ApplicationController
  before_action :set_crf, only: [:show, :edit, :update, :destroy]

  # GET /crves
  # GET /crves.json
  def index
    @crves = Crf.all
  end

  # GET /crves/1
  # GET /crves/1.json
  def show
  end

  # GET /crves/new
  def new
    @crf = Crf.new
  end

  # GET /crves/1/edit
  def edit
  end

  # POST /crves
  # POST /crves.json
  def create
    @crf = Crf.new(crf_params)

    respond_to do |format|
      if @crf.save
        format.html { redirect_to @crf, notice: 'Crf was successfully created.' }
        format.json { render :show, status: :created, location: @crf }
      else
        format.html { render :new }
        format.json { render json: @crf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crves/1
  # PATCH/PUT /crves/1.json
  def update
    respond_to do |format|
      if @crf.update(crf_params)
        format.html { redirect_to @crf, notice: 'Crf was successfully updated.' }
        format.json { render :show, status: :ok, location: @crf }
      else
        format.html { render :edit }
        format.json { render json: @crf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crves/1
  # DELETE /crves/1.json
  def destroy
    @crf.destroy
    respond_to do |format|
      format.html { redirect_to crves_url, notice: 'Crf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crf
      @crf = Crf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crf_params
      params.require(:crf).permit(:emergency, :additional_comments, :status, :date)
    end
end
