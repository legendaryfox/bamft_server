require 'test_helper'

class FactletsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get full_dump" do
    get :full_dump
    assert_response :success
  end

  test "should get random" do
    get :random
    assert_response :success
  end

end
