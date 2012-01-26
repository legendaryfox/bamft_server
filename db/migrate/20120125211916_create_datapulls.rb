class CreateDatapulls < ActiveRecord::Migration
  def self.up
    create_table :datapulls do |t|
      t.string :checksum
      t.text :notes
      t.integer :time_of_day
      t.integer :day_of_week
      t.text :apidata

      t.timestamps
    end
  end

  def self.down
    drop_table :datapulls
  end
end
