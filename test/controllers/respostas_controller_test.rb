require 'test_helper'

class RespostasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resposta = respostas(:one)
  end

  test "should get index" do
    get respostas_url
    assert_response :success
  end

  test "should get new" do
    get new_resposta_url
    assert_response :success
  end

  test "should create resposta" do
    assert_difference('Resposta.count') do
      post respostas_url, params: { resposta: { capex: @resposta.capex, descricao: @resposta.descricao, estrutura: @resposta.estrutura, numero_vt_id_id: @resposta.numero_vt_id_id, opex_instalacao: @resposta.opex_instalacao, opex_mensal: @resposta.opex_mensal, prazo: @resposta.prazo, resultado_vt: @resposta.resultado_vt, tipo: @resposta.tipo } }
    end

    assert_redirected_to resposta_url(Resposta.last)
  end

  test "should show resposta" do
    get resposta_url(@resposta)
    assert_response :success
  end

  test "should get edit" do
    get edit_resposta_url(@resposta)
    assert_response :success
  end

  test "should update resposta" do
    patch resposta_url(@resposta), params: { resposta: { capex: @resposta.capex, descricao: @resposta.descricao, estrutura: @resposta.estrutura, numero_vt_id_id: @resposta.numero_vt_id_id, opex_instalacao: @resposta.opex_instalacao, opex_mensal: @resposta.opex_mensal, prazo: @resposta.prazo, resultado_vt: @resposta.resultado_vt, tipo: @resposta.tipo } }
    assert_redirected_to resposta_url(@resposta)
  end

  test "should destroy resposta" do
    assert_difference('Resposta.count', -1) do
      delete resposta_url(@resposta)
    end

    assert_redirected_to respostas_url
  end
end
