require 'test_helper'

class ActsControllerTest < ActionController::TestCase
  test "should get get_raks" do
    get :get_raks
    assert_response :success
  end

end
