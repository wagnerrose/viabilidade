require 'test_helper'

class Backoffice::Tabelas::LocalidadesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_tabelas_localidades_index_url
    assert_response :success
  end

end
