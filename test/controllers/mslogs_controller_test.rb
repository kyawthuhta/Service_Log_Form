require 'test_helper'

class MslogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mslogs_index_url
    assert_response :success
  end

  test "should get show" do
    get mslogs_show_url
    assert_response :success
  end

  test "should get new" do
    get mslogs_new_url
    assert_response :success
  end

  test "should get edit" do
    get mslogs_edit_url
    assert_response :success
  end

end
