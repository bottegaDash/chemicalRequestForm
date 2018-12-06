class ChemicalsController < ApplicationController
  def index
    @chemical_item = Chemical.new
    @chemical_items = Chemical.order('name ASC')
  end

  def create
   @chemical_item = Chemical.new(params.require(:chemical).permit(:name))
   respond_to do |format|
     if @chemical_item.save
       format.html { redirect_to chemicals_path, notice: 'The chemical is now available to the employees' }
     else
       format.html { render :new }
     end
   end
  end

  def destroy
    @chemical_item = Chemical.find(params[:id])
    @chemical_item.destroy
    respond_to do |format|
      format.html { redirect_to chemicals_path, notice: 'The chemical was removed.' }
    end
  end

  def edit
    @chemical_item = Chemical.find(params[:id])
    toggle_status
    respond_to do |format|
      format.html { redirect_to chemicals_path}
    end
  end

  def update
    @chemical_item = Chemical.find(params[:id])
    respond_to do |format|
      if @chemical_item.update(params.require(:chemical).permit(:name))
        toggle_status
        format.html { redirect_to chemicals_path, notice: 'The chemical was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def toggle_status
    @chemical_item.draft? ? @chemical_item.published! : @chemical_item.draft!
  end
end
