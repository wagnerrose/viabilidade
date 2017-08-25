require 'test_helper'

class Backoffice::Tabelas::AnalistasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_tabelas_analistas_index_url
    assert_response :success
  end

end
