require "test_helper"

class CategoriaEquipamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoria_equipamento = categoria_equipamentos(:one)
  end

  test "should get index" do
    get categoria_equipamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_categoria_equipamento_url
    assert_response :success
  end

  test "should create categoria_equipamento" do
    assert_difference("CategoriaEquipamento.count") do
      post categoria_equipamentos_url, params: { categoria_equipamento: { descricao: @categoria_equipamento.descricao } }
    end

    assert_redirected_to categoria_equipamento_url(CategoriaEquipamento.last)
  end

  test "should show categoria_equipamento" do
    get categoria_equipamento_url(@categoria_equipamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoria_equipamento_url(@categoria_equipamento)
    assert_response :success
  end

  test "should update categoria_equipamento" do
    patch categoria_equipamento_url(@categoria_equipamento), params: { categoria_equipamento: { descricao: @categoria_equipamento.descricao } }
    assert_redirected_to categoria_equipamento_url(@categoria_equipamento)
  end

  test "should destroy categoria_equipamento" do
    assert_difference("CategoriaEquipamento.count", -1) do
      delete categoria_equipamento_url(@categoria_equipamento)
    end

    assert_redirected_to categoria_equipamentos_url
  end
end
