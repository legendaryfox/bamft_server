class EvenSmallerPrecision < ActiveRecord::Migration
  def self.up
    change_column :landmarks, :xcoord, :float, :precision => 10
    change_column :landmarks, :ycoord, :float, :precision => 10
  end

  def self.down
    change_column :landmarks, :xcoord, :float, :precision => 10
    change_column :landmarks, :ycoord, :float, :precision => 10
  end
end
