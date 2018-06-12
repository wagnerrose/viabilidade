require 'test_helper'

class Backoffice::CircuitoControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backoffice_circuito = backoffice_circuitos(:one)
  end

  test "should get index" do
    get backoffice_circuitos_url
    assert_response :success
  end

  test "should get new" do
    get new_backoffice_circuito_url
    assert_response :success
  end

  test "should create backoffice_circuito" do
    assert_difference('Backoffice::Circuito.count') do
      post backoffice_circuitos_url, params: { backoffice_circuito: { asn: @backoffice_circuito.asn, bandaAtivada: @backoffice_circuito.bandaAtivada, bandaContratada: @backoffice_circuito.bandaContratada, contrato: @backoffice_circuito.contrato, dataAtivacao: @backoffice_circuito.dataAtivacao, descricao: @backoffice_circuito.descricao, designacao: @backoffice_circuito.designacao, empresa: @backoffice_circuito.empresa, roteamento: @backoffice_circuito.roteamento, sap: @backoffice_circuito.sap, servico: @backoffice_circuito.servico, status: @backoffice_circuito.status } }
    end

    assert_redirected_to backoffice_circuito_url(Backoffice::Circuito.last)
  end

  test "should show backoffice_circuito" do
    get backoffice_circuito_url(@backoffice_circuito)
    assert_response :success
  end

  test "should get edit" do
    get edit_backoffice_circuito_url(@backoffice_circuito)
    assert_response :success
  end

  test "should update backoffice_circuito" do
    patch backoffice_circuito_url(@backoffice_circuito), params: { backoffice_circuito: { asn: @backoffice_circuito.asn, bandaAtivada: @backoffice_circuito.bandaAtivada, bandaContratada: @backoffice_circuito.bandaContratada, contrato: @backoffice_circuito.contrato, dataAtivacao: @backoffice_circuito.dataAtivacao, descricao: @backoffice_circuito.descricao, designacao: @backoffice_circuito.designacao, empresa: @backoffice_circuito.empresa, roteamento: @backoffice_circuito.roteamento, sap: @backoffice_circuito.sap, servico: @backoffice_circuito.servico, status: @backoffice_circuito.status } }
    assert_redirected_to backoffice_circuito_url(@backoffice_circuito)
  end

  test "should destroy backoffice_circuito" do
    assert_difference('Backoffice::Circuito.count', -1) do
      delete backoffice_circuito_url(@backoffice_circuito)
    end

    assert_redirected_to backoffice_circuitos_url
  end
end
