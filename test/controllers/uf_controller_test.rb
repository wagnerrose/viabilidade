require 'test_helper'

class UfControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uf = uf(:one)
  end

  test "should get index" do
    get uf_index_url
    assert_response :success
  end

  test "should get new" do
    get new_uf_url
    assert_response :success
  end

  test "should create uf" do
    assert_difference('Uf.count') do
      post uf_index_url, params: { uf: { nome: @uf.nome, sigla: @uf.sigla } }
    end

    assert_redirected_to uf_url(Uf.last)
  end

  test "should show uf" do
    get uf_url(@uf)
    assert_response :success
  end

  test "should get edit" do
    get edit_uf_url(@uf)
    assert_response :success
  end

  test "should update uf" do
    patch uf_url(@uf), params: { uf: { nome: @uf.nome, sigla: @uf.sigla } }
    assert_redirected_to uf_url(@uf)
  end

  test "should destroy uf" do
    assert_difference('Uf.count', -1) do
      delete uf_url(@uf)
    end

    assert_redirected_to uf_index_url
  end
end
