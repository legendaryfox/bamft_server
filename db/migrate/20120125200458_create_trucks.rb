class CreateTrucks < ActiveRecord::Migration
  def self.up
    create_table :trucks do |t|
      t.string :name
      t.string :cuisine
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :trucks
  end
end
