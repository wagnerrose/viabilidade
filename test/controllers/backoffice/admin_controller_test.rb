require 'test_helper'

class Backoffice::AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_admin_index_url
    assert_response :success
  end

end
