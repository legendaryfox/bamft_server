require 'test_helper'

class DatapullTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end



# == Schema Information
#
# Table name: datapulls
#
#  id          :integer         not null, primary key
#  checksum    :string(255)
#  notes       :text
#  time_of_day :integer
#  day_of_week :string(255)
#  api_data    :text
#  created_at  :datetime
#  updated_at  :datetime
#

