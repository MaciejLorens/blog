require 'test_helper'

class HobbyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
