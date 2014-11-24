require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get show" do
    get :home
    assert_response :success
  end

end
