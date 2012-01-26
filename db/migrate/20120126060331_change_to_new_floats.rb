class ChangeToNewFloats < ActiveRecord::Migration
  def self.up
    change_column :landmarks, :xcoord, :float, :scale => 12, :precision => 15
    change_column :landmarks, :ycoord, :float, :scale => 12, :precision => 15
  end

  def self.down
    change_column :landmarks, :xcoord, :string
    change_column :landmarks, :ycoord, :string
  end
end
