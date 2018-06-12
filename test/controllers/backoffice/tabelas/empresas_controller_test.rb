require 'test_helper'

class Backoffice::Tabelas::EmpresasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_tabelas_empresas_index_url
    assert_response :success
  end

end
