require 'test_helper'

class Backoffice::Tabelas::EquipamentosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_tabelas_equipamentos_index_url
    assert_response :success
  end

end
