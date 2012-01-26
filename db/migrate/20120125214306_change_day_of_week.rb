class ChangeDayOfWeek < ActiveRecord::Migration
  def self.up
    change_column :schedules, :day_of_week, :string
  end

  def self.down
    change_column :schedules, :day_of_week, :integer
  end
end
