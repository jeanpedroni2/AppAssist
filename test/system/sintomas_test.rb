require "application_system_test_case"

class SintomasTest < ApplicationSystemTestCase
  setup do
    @sintoma = sintomas(:one)
  end

  test "visiting the index" do
    visit sintomas_url
    assert_selector "h1", text: "Sintomas"
  end

  test "should create sintoma" do
    visit sintomas_url
    click_on "New sintoma"

    fill_in "Descricao", with: @sintoma.descricao
    click_on "Create Sintoma"

    assert_text "Sintoma was successfully created"
    click_on "Back"
  end

  test "should update Sintoma" do
    visit sintoma_url(@sintoma)
    click_on "Edit this sintoma", match: :first

    fill_in "Descricao", with: @sintoma.descricao
    click_on "Update Sintoma"

    assert_text "Sintoma was successfully updated"
    click_on "Back"
  end

  test "should destroy Sintoma" do
    visit sintoma_url(@sintoma)
    click_on "Destroy this sintoma", match: :first

    assert_text "Sintoma was successfully destroyed"
  end
end
