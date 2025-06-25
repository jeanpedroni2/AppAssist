require "application_system_test_case"

class CategoriaEquipamentosTest < ApplicationSystemTestCase
  setup do
    @categoria_equipamento = categoria_equipamentos(:one)
  end

  test "visiting the index" do
    visit categoria_equipamentos_url
    assert_selector "h1", text: "Categoria equipamentos"
  end

  test "should create categoria equipamento" do
    visit categoria_equipamentos_url
    click_on "New categoria equipamento"

    fill_in "Descricao", with: @categoria_equipamento.descricao
    click_on "Create Categoria equipamento"

    assert_text "Categoria equipamento was successfully created"
    click_on "Back"
  end

  test "should update Categoria equipamento" do
    visit categoria_equipamento_url(@categoria_equipamento)
    click_on "Edit this categoria equipamento", match: :first

    fill_in "Descricao", with: @categoria_equipamento.descricao
    click_on "Update Categoria equipamento"

    assert_text "Categoria equipamento was successfully updated"
    click_on "Back"
  end

  test "should destroy Categoria equipamento" do
    visit categoria_equipamento_url(@categoria_equipamento)
    click_on "Destroy this categoria equipamento", match: :first

    assert_text "Categoria equipamento was successfully destroyed"
  end
end
