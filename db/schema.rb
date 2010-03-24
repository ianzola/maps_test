# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100323011245) do

  create_table "lga_region", :options=>'ENGINE=MyISAM', :force => true do |t|
    t.string        "area"
    t.string        "justificat"
    t.float         "original_x"
    t.float         "original_y"
    t.float         "slant"
    t.float         "rotation"
    t.float         "spacing"
    t.float         "width"
    t.integer       "font"
    t.integer       "color"
    t.string        "name"
    t.multi_polygon "the_geom",   :null => false
  end

  add_index "lga_region", ["the_geom"], :name => "index_lga_region_on_the_geom", :spatial => true

  create_table "precincts", :id => false, :options=>'ENGINE=MyISAM', :force => true do |t|
    t.integer       "id"
    t.string        "precinctna"
    t.multi_polygon "the_geom",   :null => false
  end

  create_table "table_points", :options=>'ENGINE=MyISAM', :force => true do |t|
    t.string "data"
    t.point  "geom", :null => false
  end

  add_index "table_points", ["geom"], :name => "index_table_points_on_geom", :spatial => true

end
