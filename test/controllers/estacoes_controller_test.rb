require 'test_helper'

class EstacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estacao = estacoes(:one)
  end

  test "should get index" do
    get estacoes_url
    assert_response :success
  end

  test "should get new" do
    get new_estacao_url
    assert_response :success
  end

  test "should create estacao" do
    assert_difference('Estacao.count') do
      post estacoes_url, params: { estacao: { cedente: @estacao.cedente, cidade: @estacao.cidade, endereco: @estacao.endereco, latitude: @estacao.latitude, longitude: @estacao.longitude, nome: @estacao.nome, pop: @estacao.pop, tipo: @estacao.tipo, uf: @estacao.uf } }
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
    patch estacao_url(@estacao), params: { estacao: { cedente: @estacao.cedente, cidade: @estacao.cidade, endereco: @estacao.endereco, latitude: @estacao.latitude, longitude: @estacao.longitude, nome: @estacao.nome, pop: @estacao.pop, tipo: @estacao.tipo, uf: @estacao.uf } }
    assert_redirected_to estacao_url(@estacao)
  end

  test "should destroy estacao" do
    assert_difference('Estacao.count', -1) do
      delete estacao_url(@estacao)
    end

    assert_redirected_to estacoes_url
  end
end
