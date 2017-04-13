require 'test_helper'

class SolicitacaesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitacao = solicitacaes(:one)
  end

  test "should get index" do
    get solicitacaes_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitacao_url
    assert_response :success
  end

  test "should create solicitacao" do
    assert_difference('Solicitacao.count') do
      post solicitacaes_url, params: { solicitacao: { analista: @solicitacao.analista, banda: @solicitacao.banda, cliente_id_id: @solicitacao.cliente_id_id, data_solicitacao: @solicitacao.data_solicitacao, endereco_a: @solicitacao.endereco_a, endereco_b: @solicitacao.endereco_b, localidade_a: @solicitacao.localidade_a, localidade_b: @solicitacao.localidade_b, numerovt: @solicitacao.numerovt, resultado_vt: @solicitacao.resultado_vt, servico: @solicitacao.servico, solicitante: @solicitacao.solicitante, uf_a: @solicitacao.uf_a, uf_b: @solicitacao.uf_b } }
    end

    assert_redirected_to solicitacao_url(Solicitacao.last)
  end

  test "should show solicitacao" do
    get solicitacao_url(@solicitacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitacao_url(@solicitacao)
    assert_response :success
  end

  test "should update solicitacao" do
    patch solicitacao_url(@solicitacao), params: { solicitacao: { analista: @solicitacao.analista, banda: @solicitacao.banda, cliente_id_id: @solicitacao.cliente_id_id, data_solicitacao: @solicitacao.data_solicitacao, endereco_a: @solicitacao.endereco_a, endereco_b: @solicitacao.endereco_b, localidade_a: @solicitacao.localidade_a, localidade_b: @solicitacao.localidade_b, numerovt: @solicitacao.numerovt, resultado_vt: @solicitacao.resultado_vt, servico: @solicitacao.servico, solicitante: @solicitacao.solicitante, uf_a: @solicitacao.uf_a, uf_b: @solicitacao.uf_b } }
    assert_redirected_to solicitacao_url(@solicitacao)
  end

  test "should destroy solicitacao" do
    assert_difference('Solicitacao.count', -1) do
      delete solicitacao_url(@solicitacao)
    end

    assert_redirected_to solicitacaes_url
  end
end
