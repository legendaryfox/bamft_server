class UberSmall < ActiveRecord::Migration
  def self.up
    change_column :landmarks, :xcoord, :float, :scale => 8, :precision => 10
    change_column :landmarks, :ycoord, :float, :scale => 8, :precision => 10
  end

  def self.down
    change_column :landmarks, :xcoord, :float, :scale => 8, :precision => 10
    change_column :landmarks, :ycoord, :float, :scale => 8, :precision => 10
  end
end
