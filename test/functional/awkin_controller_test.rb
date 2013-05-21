require 'test_helper'

class AwkinControllerTest < ActionController::TestCase
  setup do
    @awkin = awkin(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:total)
  end
end