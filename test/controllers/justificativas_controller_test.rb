require 'test_helper'

class JustificativasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @justificativa = justificativas(:one)
  end

  test "should get index" do
    get justificativas_url
    assert_response :success
  end

  test "should get new" do
    get new_justificativa_url
    assert_response :success
  end

  test "should create justificativa" do
    assert_difference('Justificativa.count') do
      post justificativas_url, params: { justificativa: { cod_justificativa: @justificativa.cod_justificativa, nome: @justificativa.nome, tipo: @justificativa.tipo } }
    end

    assert_redirected_to justificativa_url(Justificativa.last)
  end

  test "should show justificativa" do
    get justificativa_url(@justificativa)
    assert_response :success
  end

  test "should get edit" do
    get edit_justificativa_url(@justificativa)
    assert_response :success
  end

  test "should update justificativa" do
    patch justificativa_url(@justificativa), params: { justificativa: { cod_justificativa: @justificativa.cod_justificativa, nome: @justificativa.nome, tipo: @justificativa.tipo } }
    assert_redirected_to justificativa_url(@justificativa)
  end

  test "should destroy justificativa" do
    assert_difference('Justificativa.count', -1) do
      delete justificativa_url(@justificativa)
    end

    assert_redirected_to justificativas_url
  end
end
