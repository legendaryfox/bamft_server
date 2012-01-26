class Truck < ActiveRecord::Base
  
  attr_accessible :name, :cuisine, :description
  
  has_many :schedules
  has_many :landmarks, :through => :schedules, :source => :landmark
  
end

# == Schema Information
#
# Table name: trucks
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  cuisine     :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

