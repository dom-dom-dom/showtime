require 'test_helper'

class Manage::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_orders_show_url
    assert_response :success
  end

end
