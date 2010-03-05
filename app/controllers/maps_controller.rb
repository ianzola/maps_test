class MapsController < ApplicationController
  def index
  end

  def show
    @boundaries = {}
    ssc = %w(11119 11121 11123 11721 11143 11311 11827 11863 11967 12021)
    stroke_colors = %w(CC3333 009933 FF99FF CC3333 FFCC66 333333 CC9966 CC9999 66FFFF 999933)
    fill_colors =  %w(99CCFF 00CC33 FFCCFF FF3333 FFFF99 CCCCCC FFCC99 FFCCCC 33CCCC CCCC00)
    ssc.each_with_index do |code, index|
      url = "public/boundaries/#{code}.json"
      @boundaries.merge!({"#{code}" => {'values' => open(url).read, 'stroke' => stroke_colors[index], 'fill' => fill_colors[index]}}) 
    end
  end

end
