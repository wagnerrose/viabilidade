require 'test_helper'

class Backoffice::Tabelas::ServicosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_tabelas_servicos_index_url
    assert_response :success
  end

end
