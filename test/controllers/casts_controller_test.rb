require 'test_helper'

class CastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get casts_index_url
    assert_response :success
  end

  test "should get show" do
    get casts_show_url
    assert_response :success
  end

end
