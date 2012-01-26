require 'test_helper'

class DatapullsControllerTest < ActionController::TestCase
  test "should get full" do
    get :full
    assert_response :success
  end

  test "should get morning" do
    get :morning
    assert_response :success
  end

  test "should get afternoon" do
    get :afternoon
    assert_response :success
  end

  test "should get evening" do
    get :evening
    assert_response :success
  end

end
