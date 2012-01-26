class ChangeLocationsToLandmarks < ActiveRecord::Migration
  def self.up
    change_column :landmarks, :xcoord, :float
    change_column :landmarks, :ycoord, :float
  end

  def self.down
    change_column :landmarks, :xcoord, :integer
    change_column :landmarks, :ycoord, :integer
  end
end
