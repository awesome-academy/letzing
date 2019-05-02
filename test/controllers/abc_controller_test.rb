require 'test_helper'

class AbcControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get abc_home_url
    assert_response :success
  end

end
