class MapsController < ApplicationController
  def index
  end

  def show
    @boundaries = {}
    ssc = %w(11119 11121 11123 11721 11143 11311 11827 11863 11967 12021)
    ssc.each do |code|
      url = "public/boundaries/#{code}.json"
      @boundaries[code] = open(url).read
    end
  end

end
