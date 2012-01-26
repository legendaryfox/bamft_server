require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  test "should get morning_trucks" do
    get :morning_trucks
    assert_response :success
  end

  test "should get afternoon_trucks" do
    get :afternoon_trucks
    assert_response :success
  end

  test "should get evening_trucks" do
    get :evening_trucks
    assert_response :success
  end

end
