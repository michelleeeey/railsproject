require 'test_helper'

class BattlegroundsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get battlegrounds_index_url
    assert_response :success
  end

  test "should get show" do
    get battlegrounds_show_url
    assert_response :success
  end

end
