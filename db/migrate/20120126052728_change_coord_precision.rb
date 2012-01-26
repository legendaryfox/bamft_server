class ChangeCoordPrecision < ActiveRecord::Migration
  def self.up
    change_column :landmarks, :xcoord, :float, :precision => 50
    change_column :landmarks, :ycoord, :float, :precision => 50
  end
  

  def self.down
    change_column :landmarks, :xcoord, :float, :precision => 50
    change_column :landmarks, :ycoord, :float, :precision => 50
  end
end
