require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end




# == Schema Information
#
# Table name: schedules
#
#  id          :integer         primary key
#  time_of_day :string(255)
#  day_of_week :string(255)
#  truck_id    :integer
#  landmark_id :integer
#  created_at  :timestamp
#  updated_at  :timestamp
#

