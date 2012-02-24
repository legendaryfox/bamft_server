class Factlet < ActiveRecord::Base
  attr_accessible :title, :content, :truck_id
  
  belongs_to :truck
  
  validates :title, :presence => true;
  validates :content, :presence => true;
  
end


# == Schema Information
#
# Table name: factlets
#
#  id         :integer         primary key
#  title      :string(255)
#  content    :text
#  truck_id   :integer
#  created_at :timestamp
#  updated_at :timestamp
#

