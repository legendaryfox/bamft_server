require 'test_helper'

class AnnouncementTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

