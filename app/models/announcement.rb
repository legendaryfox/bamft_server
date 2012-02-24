class Announcement < ActiveRecord::Base
  attr_accessible :title, :content, :truck_id, :created_at
  
end


# == Schema Information
#
# Table name: announcements
#
#  id         :integer         primary key
#  title      :string(255)
#  content    :text
#  truck_id   :integer
#  created_at :timestamp
#  updated_at :timestamp
#

