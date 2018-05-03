require 'test_helper'

class EpisodesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get episodes_show_url
    assert_response :success
  end

end
