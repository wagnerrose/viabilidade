require 'test_helper'

class Backoffice::Tabelas::JustificativasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_tabelas_justificativas_index_url
    assert_response :success
  end

end
