require 'test_helper'

class WatchingStatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get select" do
    get watching_statuses_select_url
    assert_response :success
  end

end
