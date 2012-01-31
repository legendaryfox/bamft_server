class Landmark < ActiveRecord::Base
  attr_accessible :name, :xcoord, :ycoord
  
  has_many :schedules
  has_many :trucks, :through => :schedules, :source => :truck
  
end


# == Schema Information
#
# Table name: landmarks
#
#  id         :integer         primary key
#  name       :string(255)
#  xcoord     :string(255)
#  ycoord     :string(255)
#  created_at :timestamp
#  updated_at :timestamp
#

