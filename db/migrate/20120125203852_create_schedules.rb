class CreateSchedules < ActiveRecord::Migration
  def self.up
    create_table :schedules do |t|
      t.integer :time_of_day
      t.integer :day_of_week
      t.integer :truck_id
      t.integer :landmark_id

      t.timestamps
    end
  end

  def self.down
    drop_table :schedules
  end
end
