require "application_system_test_case"

class UnidadeMedidasTest < ApplicationSystemTestCase
  setup do
    @unidade_medida = unidade_medidas(:one)
  end

  test "visiting the index" do
    visit unidade_medidas_url
    assert_selector "h1", text: "Unidade medidas"
  end

  test "should create unidade medida" do
    visit unidade_medidas_url
    click_on "New unidade medida"

    fill_in "Descricao", with: @unidade_medida.descricao
    fill_in "Sigla", with: @unidade_medida.sigla
    click_on "Create Unidade medida"

    assert_text "Unidade medida was successfully created"
    click_on "Back"
  end

  test "should update Unidade medida" do
    visit unidade_medida_url(@unidade_medida)
    click_on "Edit this unidade medida", match: :first

    fill_in "Descricao", with: @unidade_medida.descricao
    fill_in "Sigla", with: @unidade_medida.sigla
    click_on "Update Unidade medida"

    assert_text "Unidade medida was successfully updated"
    click_on "Back"
  end

  test "should destroy Unidade medida" do
    visit unidade_medida_url(@unidade_medida)
    click_on "Destroy this unidade medida", match: :first

    assert_text "Unidade medida was successfully destroyed"
  end
end
