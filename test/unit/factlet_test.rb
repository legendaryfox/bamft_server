require 'test_helper'

class FactletTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: factlets
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  content    :text
#  truck_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

