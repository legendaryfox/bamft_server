require 'test_helper'

class MenuItemTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

