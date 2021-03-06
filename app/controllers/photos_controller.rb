class PhotosController < ApplicationController
  before_action :authenticate_user!
  def create 
    @course = Course.find(params[:id])
    @course.photos.create(photo_params.merge(user: current_user))
    redirect_to course_path(@course)
  end
  
  private
  
  def photo_params
    params.require(:photo).permit(:image, :caption)
  end  
end
