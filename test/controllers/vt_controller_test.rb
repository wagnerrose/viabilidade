require 'test_helper'

class VtControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vt = vt(:one)
  end

  test "should get index" do
    get vt_index_url
    assert_response :success
  end

  test "should get new" do
    get new_vt_url
    assert_response :success
  end

  test "should create vt" do
    assert_difference('Vt.count') do
      post vt_index_url, params: { vt: { analista: @vt.analista, comentario: @vt.comentario, data_resultado: @vt.data_resultado, data_solicitacao: @vt.data_solicitacao, destino: @vt.destino, id_cliente: @vt.id_cliente, justificativa_vt: @vt.justificativa_vt, origem: @vt.origem, popa: @vt.popa, popb: @vt.popb, resultado_vt: @vt.resultado_vt, servico: @vt.servico, solicitante: @vt.solicitante, uf_destino: @vt.uf_destino, uf_origem: @vt.uf_origem, vt_numero: @vt.vt_numero } }
    end

    assert_redirected_to vt_url(Vt.last)
  end

  test "should show vt" do
    get vt_url(@vt)
    assert_response :success
  end

  test "should get edit" do
    get edit_vt_url(@vt)
    assert_response :success
  end

  test "should update vt" do
    patch vt_url(@vt), params: { vt: { analista: @vt.analista, comentario: @vt.comentario, data_resultado: @vt.data_resultado, data_solicitacao: @vt.data_solicitacao, destino: @vt.destino, id_cliente: @vt.id_cliente, justificativa_vt: @vt.justificativa_vt, origem: @vt.origem, popa: @vt.popa, popb: @vt.popb, resultado_vt: @vt.resultado_vt, servico: @vt.servico, solicitante: @vt.solicitante, uf_destino: @vt.uf_destino, uf_origem: @vt.uf_origem, vt_numero: @vt.vt_numero } }
    assert_redirected_to vt_url(@vt)
  end

  test "should destroy vt" do
    assert_difference('Vt.count', -1) do
      delete vt_url(@vt)
    end

    assert_redirected_to vt_index_url
  end
end
