require 'test_helper'

class RentControllerTest < ActionController::TestCase
  test "should get yards" do
    get :yards
    assert_response :success
  end

end
