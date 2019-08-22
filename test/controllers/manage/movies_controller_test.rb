require 'test_helper'

class Manage::MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_movies_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_movies_show_url
    assert_response :success
  end

  test "should get new" do
    get manage_movies_new_url
    assert_response :success
  end

  test "should get edit" do
    get manage_movies_edit_url
    assert_response :success
  end

end
