class Schedule < ActiveRecord::Base
  
  attr_accessible :time_of_day, :day_of_week, :truck_id, :landmark_id
  
  belongs_to :truck, :class_name => "Truck"
  belongs_to :landmark, :class_name => "Landmark"
  
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

