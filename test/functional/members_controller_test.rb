require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

  test "should get opportunities" do
    get :opportunities
    assert_response :success
  end

end
