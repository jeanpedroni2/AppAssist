require "test_helper"

class SintomasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sintoma = sintomas(:one)
  end

  test "should get index" do
    get sintomas_url
    assert_response :success
  end

  test "should get new" do
    get new_sintoma_url
    assert_response :success
  end

  test "should create sintoma" do
    assert_difference("Sintoma.count") do
      post sintomas_url, params: { sintoma: { descricao: @sintoma.descricao } }
    end

    assert_redirected_to sintoma_url(Sintoma.last)
  end

  test "should show sintoma" do
    get sintoma_url(@sintoma)
    assert_response :success
  end

  test "should get edit" do
    get edit_sintoma_url(@sintoma)
    assert_response :success
  end

  test "should update sintoma" do
    patch sintoma_url(@sintoma), params: { sintoma: { descricao: @sintoma.descricao } }
    assert_redirected_to sintoma_url(@sintoma)
  end

  test "should destroy sintoma" do
    assert_difference("Sintoma.count", -1) do
      delete sintoma_url(@sintoma)
    end

    assert_redirected_to sintomas_url
  end
end
