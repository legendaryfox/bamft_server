require 'test_helper'

class TruckTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

