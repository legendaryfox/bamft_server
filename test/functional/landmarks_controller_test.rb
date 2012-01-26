require 'test_helper'

class LandmarksControllerTest < ActionController::TestCase
  test "should get full_dump" do
    get :full_dump
    assert_response :success
  end

end
