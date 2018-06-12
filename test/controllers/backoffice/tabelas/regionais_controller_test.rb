require 'test_helper'

class Backoffice::Tabelas::RegionaisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_tabelas_regionais_index_url
    assert_response :success
  end

end
