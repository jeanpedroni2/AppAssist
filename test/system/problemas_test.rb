require "application_system_test_case"

class ProblemasTest < ApplicationSystemTestCase
  setup do
    @problema = problemas(:one)
  end

  test "visiting the index" do
    visit problemas_url
    assert_selector "h1", text: "Problemas"
  end

  test "should create problema" do
    visit problemas_url
    click_on "New problema"

    fill_in "Descricao", with: @problema.descricao
    click_on "Create Problema"

    assert_text "Problema was successfully created"
    click_on "Back"
  end

  test "should update Problema" do
    visit problema_url(@problema)
    click_on "Edit this problema", match: :first

    fill_in "Descricao", with: @problema.descricao
    click_on "Update Problema"

    assert_text "Problema was successfully updated"
    click_on "Back"
  end

  test "should destroy Problema" do
    visit problema_url(@problema)
    click_on "Destroy this problema", match: :first

    assert_text "Problema was successfully destroyed"
  end
end
