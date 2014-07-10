class Slideshow::SlidesController < ApplicationController

  def update

    slide_id = CurrentSlide.first.slide_id

    if session[ :current_slide ] != slide_id
      session[ :current_slide ] = slide_id
      render json: Slide.find( slide_id )
    else
      render json: {}
    end
  end

  def pupil
    session[ :current_slide ] = CurrentSlide.first.slide_id
    @slide = Slide.find( session[ :current_slide ] )
  end

  def teacher
    @current_slide = CurrentSlide.first
    @slide = Slide.find( @current_slide.slide_id )
  end

end
