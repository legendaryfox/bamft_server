class Truck < ActiveRecord::Base
  
  attr_accessible :name, :cuisine, :description, :menu, :twitter, :facebook, :website, :email, :yelp
  
  has_many :schedules
  has_many :landmarks, :through => :schedules, :source => :landmark
  
  has_many :menu_items
  
end



# == Schema Information
#
# Table name: trucks
#
#  id          :integer         primary key
#  name        :string(255)
#  cuisine     :string(255)
#  description :text
#  created_at  :timestamp
#  updated_at  :timestamp
#  menu        :text
#  twitter     :string(255)
#  facebook    :string(255)
#  website     :string(255)
#  email       :string(255)
#  yelp        :string(255)
#

