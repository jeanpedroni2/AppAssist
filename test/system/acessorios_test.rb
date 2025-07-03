require "application_system_test_case"

class AcessoriosTest < ApplicationSystemTestCase
  setup do
    @acessorio = acessorios(:one)
  end

  test "visiting the index" do
    visit acessorios_url
    assert_selector "h1", text: "Acessorios"
  end

  test "should create acessorio" do
    visit acessorios_url
    click_on "New acessorio"

    fill_in "Descricao", with: @acessorio.descricao
    click_on "Create Acessorio"

    assert_text "Acessorio was successfully created"
    click_on "Back"
  end

  test "should update Acessorio" do
    visit acessorio_url(@acessorio)
    click_on "Edit this acessorio", match: :first

    fill_in "Descricao", with: @acessorio.descricao
    click_on "Update Acessorio"

    assert_text "Acessorio was successfully updated"
    click_on "Back"
  end

  test "should destroy Acessorio" do
    visit acessorio_url(@acessorio)
    click_on "Destroy this acessorio", match: :first

    assert_text "Acessorio was successfully destroyed"
  end
end
