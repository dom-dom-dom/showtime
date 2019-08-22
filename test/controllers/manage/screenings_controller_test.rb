require 'test_helper'

class Manage::ScreeningsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get manage_screenings_new_url
    assert_response :success
  end

end
