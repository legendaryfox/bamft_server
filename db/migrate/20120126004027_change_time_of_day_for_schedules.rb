class ChangeTimeOfDayForSchedules < ActiveRecord::Migration
  def self.up
    change_column :schedules, :time_of_day, :string
  end

  def self.down
    change_column :schedules, :time_of_day, :integer
  end
end
