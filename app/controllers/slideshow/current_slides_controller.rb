class Slideshow::CurrentSlidesController < ApplicationController

  def update
    @current_slide = CurrentSlide.find( params[:id] )
    @current_slide.slide_id = params[ :slide_id ]
    @current_slide.save!
    redirect_to slideshow_teacher_path
  end

end
