class ChemreqsController < ApplicationController
  before_action :set_chemreq, only: [:show, :edit, :update, :destroy]

  # GET /chemreqs
  # GET /chemreqs.json
  def index
    @chemreqs = Chemreq.all
  end

  # GET /chemreqs/1
  # GET /chemreqs/1.json
  def show
  end

  # GET /chemreqs/new
  def new
    @chemreq = Chemreq.new
  end

  # GET /chemreqs/1/edit
  def edit
  end

  # POST /chemreqs
  # POST /chemreqs.json
  def create
    @chemreq = Chemreq.new(chemreq_params)

    respond_to do |format|
      if @chemreq.save
        format.html { redirect_to @chemreq, notice: 'Chemreq was successfully created.' }
        format.json { render :show, status: :created, location: @chemreq }
      else
        format.html { render :new }
        format.json { render json: @chemreq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chemreqs/1
  # PATCH/PUT /chemreqs/1.json
  def update
    respond_to do |format|
      if @chemreq.update(chemreq_params)
        format.html { redirect_to @chemreq, notice: 'Chemreq was successfully updated.' }
        format.json { render :show, status: :ok, location: @chemreq }
      else
        format.html { render :edit }
        format.json { render json: @chemreq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chemreqs/1
  # DELETE /chemreqs/1.json
  def destroy
    @chemreq.destroy
    respond_to do |format|
      format.html { redirect_to chemreqs_url, notice: 'Chemreq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chemreq
      @chemreq = Chemreq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chemreq_params
      params.require(:chemreq).permit(:emergencey, :comments,
                                      carts_attributes: [:id, :name, :count,
                                                         :_destroy])
    end
end
