require 'test_helper'

class LocalidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @localidade = localidades(:one)
  end

  test "should get index" do
    get localidades_url
    assert_response :success
  end

  test "should get new" do
    get new_localidade_url
    assert_response :success
  end

  test "should create localidade" do
    assert_difference('Localidade.count') do
      post localidades_url, params: { localidade: { cod_localidade: @localidade.cod_localidade, nome: @localidade.nome, uf: @localidade.uf } }
    end

    assert_redirected_to localidade_url(Localidade.last)
  end

  test "should show localidade" do
    get localidade_url(@localidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_localidade_url(@localidade)
    assert_response :success
  end

  test "should update localidade" do
    patch localidade_url(@localidade), params: { localidade: { cod_localidade: @localidade.cod_localidade, nome: @localidade.nome, uf: @localidade.uf } }
    assert_redirected_to localidade_url(@localidade)
  end

  test "should destroy localidade" do
    assert_difference('Localidade.count', -1) do
      delete localidade_url(@localidade)
    end

    assert_redirected_to localidades_url
  end
end
