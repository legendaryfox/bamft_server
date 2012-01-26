class CreateLandmarks < ActiveRecord::Migration
  def self.up
    create_table :landmarks do |t|
      t.string :name
      t.string :xcoord
      t.string :ycoord

      t.timestamps
    end
  end

  def self.down
    drop_table :landmarks
  end
end
