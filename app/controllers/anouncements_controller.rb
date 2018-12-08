class AnouncementsController < ApplicationController
  def index
    @anouncements = Anouncement.all.by_created_at
    @anouncement_item = Anouncement.new
  end

  def create
   @anouncement_item = Anouncement.new(params.require(:anouncement).permit(:title, :details))
   respond_to do |format|
     if @anouncement_item.save
       format.html { redirect_to anouncements_path, notice: 'Your anouncement is now public.' }
     else
       format.html { render :new }
     end
   end
  end
end
