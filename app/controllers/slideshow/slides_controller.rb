class Slideshow::SlidesController < ApplicationController

  def home
    @slide = Slide.first || Slide.new( title: 'There are no slides' )
  end

  def show
    @slide = Slide.find( params[:id] )
  end

end
