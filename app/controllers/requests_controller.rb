class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    if current_user.try(:type) == 'AdminUser'
      @requests_pending_non_emergency = Request.pending_non_emergency
      @requests_pending_emergency = Request.pending_emergency
      @requests_history = Request.history
      #@requests_approved
      #@requests_denied
    else
      @requests_pending_non_emergency = Request.individ_pending_non_emergency(current_user)
      @requests_pending_emergency = Request.individ_pending_emergency(current_user)
      @requests_history = Request.individ_history(current_user)
    end
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
    chemical = Chemical.all
    i = 0
    chemical.count.times {item = @request.carts.build
                          item.chemical = chemical[i].name
                          i =  i + 1}
  end

  # GET /requests/1/edit
  def edit
    if current_user.try(:type) == 'AdminUser'
      @requests = Request.all
    else
      @request = Request.submitted_by(current_user).find(params[:id])
      respond_to do |format|
        format.html { redirect_to @request, notice: 'You can not edit this' }
      end
    end
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)

    respond_to do |format|
      @request.user_id = current_user.id
      chemical = Chemical.all
      i = 0
      @request.carts.each do |cart|
        cart.chemical = chemical[i].name
        i = i + 1
      end
      @request.status = 1
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(status_request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
      @final_request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:emergency, :additional_comments, :status, :date,
                                      carts_attributes: [:id, :chemical, :count])
    end

    def status_request_params
      params.require(:request).permit(:status)
    end
end
