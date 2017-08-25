require 'test_helper'

class Backoffice::Tabelas::UfControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_tabelas_uf_index_url
    assert_response :success
  end

end
