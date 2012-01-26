class ChangeToString < ActiveRecord::Migration
  def self.up
    change_column :landmarks, :xcoord, :string
    change_column :landmarks, :ycoord, :string
  end

  def self.down
    change_column :landmarks, :xcoord, :float
    change_column :landmarks, :ycoord, :float
  end
end
