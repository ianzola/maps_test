class PrecinctsController < ApplicationController
  def index
    precincts = Precinct.find(:all)
    points = {}
    @boundaries = []

    precincts.each do |precinct|
      points[precinct.id] = []
      precinct.the_geom[0].rings[0].points.each do |p|
        points[precinct.id] << {:lat => p.lat, :lon => p.lng}
      end  
    end

      @boundaries = points
  end

end
