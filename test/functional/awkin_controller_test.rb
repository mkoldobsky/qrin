require 'test_helper'

class AwkinControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:total)
  end
end