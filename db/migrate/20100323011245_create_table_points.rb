class CreateTablePoints < ActiveRecord::Migration
  def self.up
    create_table :table_points, :options=>"ENGINE=MyISAM", :force => true do |t|
      t.string :data
      t.point :geom, :null => false
    end

    add_index :table_points, :geom, :spatial => true
  end

  def self.down
    drop_table :table_points
  end
end
