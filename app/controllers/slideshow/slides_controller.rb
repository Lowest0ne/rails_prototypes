class Slideshow::SlidesController < ApplicationController

  def pupil
    session[ :current_slide ] = CurrentSlide.first.slide_id
    @slide = Slide.find( session[ :current_slide ] )
  end

  def teacher
    @current_slide = CurrentSlide.first
    @slide = Slide.find( @current_slide.slide_id )
  end

end
