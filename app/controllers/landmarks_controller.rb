class LandmarksController < ApplicationController
  def full_dump
     #@landmarks = Landmark.all

     @landmarks = Landmark.select('id', 'name', 'xcoord', 'ycoord')
     render :json => @landmarks

     puts 'Rendering full Landmark JSON dump'

   end

end
