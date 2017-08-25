require 'test_helper'

class Backoffice::Tabelas::EstacoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_tabelas_estacoes_index_url
    assert_response :success
  end

end
