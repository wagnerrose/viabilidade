require 'test_helper'

class EstacaesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estacao = estacaes(:one)
  end

  test "should get index" do
    get estacaes_url
    assert_response :success
  end

  test "should get new" do
    get new_estacao_url
    assert_response :success
  end

  test "should create estacao" do
    assert_difference('Estacao.count') do
      post estacaes_url, params: { estacao: { cedente: @estacao.cedente, cidade: @estacao.cidade, estacao: @estacao.estacao, latitude: @estacao.latitude, longitude: @estacao.longitude, nome: @estacao.nome, status: @estacao.status, tipo: @estacao.tipo } }
    end

    assert_redirected_to estacao_url(Estacao.last)
  end

  test "should show estacao" do
    get estacao_url(@estacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_estacao_url(@estacao)
    assert_response :success
  end

  test "should update estacao" do
    patch estacao_url(@estacao), params: { estacao: { cedente: @estacao.cedente, cidade: @estacao.cidade, estacao: @estacao.estacao, latitude: @estacao.latitude, longitude: @estacao.longitude, nome: @estacao.nome, status: @estacao.status, tipo: @estacao.tipo } }
    assert_redirected_to estacao_url(@estacao)
  end

  test "should destroy estacao" do
    assert_difference('Estacao.count', -1) do
      delete estacao_url(@estacao)
    end

    assert_redirected_to estacaes_url
  end
end
