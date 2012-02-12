class MenuItem < ActiveRecord::Base
  attr_accessible :name, :description, :price, :truck_id
  belongs_to :truck, :class_name => "Truck"
  
  validates :truck_id, :presence => true
  
end


# == Schema Information
#
# Table name: menu_items
#
#  id          :integer         primary key
#  name        :string(255)
#  description :text
#  price       :string(255)
#  truck_id    :integer
#  created_at  :timestamp
#  updated_at  :timestamp
#

