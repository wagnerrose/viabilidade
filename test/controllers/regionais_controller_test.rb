require 'test_helper'

class RegionaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regional = regionais(:one)
  end

  test "should get index" do
    get regionais_url
    assert_response :success
  end

  test "should get new" do
    get new_regional_url
    assert_response :success
  end

  test "should create regional" do
    assert_difference('Regional.count') do
      post regionais_url, params: { regional: { codigo_regional: @regional.codigo_regional, nome: @regional.nome } }
    end

    assert_redirected_to regional_url(Regional.last)
  end

  test "should show regional" do
    get regional_url(@regional)
    assert_response :success
  end

  test "should get edit" do
    get edit_regional_url(@regional)
    assert_response :success
  end

  test "should update regional" do
    patch regional_url(@regional), params: { regional: { codigo_regional: @regional.codigo_regional, nome: @regional.nome } }
    assert_redirected_to regional_url(@regional)
  end

  test "should destroy regional" do
    assert_difference('Regional.count', -1) do
      delete regional_url(@regional)
    end

    assert_redirected_to regionais_url
  end
end
