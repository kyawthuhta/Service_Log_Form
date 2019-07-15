require 'test_helper'

class RailsControllerTest < ActionDispatch::IntegrationTest
  test "should get db:drop" do
    get rails_db:drop_url
    assert_response :success
  end

end
