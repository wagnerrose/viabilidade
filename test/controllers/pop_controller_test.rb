require 'test_helper'

class PopControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pop = pop(:one)
  end

  test "should get index" do
    get pop_index_url
    assert_response :success
  end

  test "should get new" do
    get new_pop_url
    assert_response :success
  end

  test "should create pop" do
    assert_difference('Pop.count') do
      post pop_index_url, params: { pop: { cod_localidade: @pop.cod_localidade, designacao: @pop.designacao, detentor: @pop.detentor, nome: @pop.nome, uf: @pop.uf } }
    end

    assert_redirected_to pop_url(Pop.last)
  end

  test "should show pop" do
    get pop_url(@pop)
    assert_response :success
  end

  test "should get edit" do
    get edit_pop_url(@pop)
    assert_response :success
  end

  test "should update pop" do
    patch pop_url(@pop), params: { pop: { cod_localidade: @pop.cod_localidade, designacao: @pop.designacao, detentor: @pop.detentor, nome: @pop.nome, uf: @pop.uf } }
    assert_redirected_to pop_url(@pop)
  end

  test "should destroy pop" do
    assert_difference('Pop.count', -1) do
      delete pop_url(@pop)
    end

    assert_redirected_to pop_index_url
  end
end
