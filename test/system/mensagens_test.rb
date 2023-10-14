require "application_system_test_case"

class MensagensTest < ApplicationSystemTestCase
  setup do
    @mensagem = mensagens(:one)
  end

  test "visiting the index" do
    visit mensagens_url
    assert_selector "h1", text: "Mensagens"
  end

  test "should create mensagem" do
    visit mensagens_url
    click_on "New mensagem"

    fill_in "Autor", with: @mensagem.autor
    fill_in "Corpo", with: @mensagem.corpo
    fill_in "Email", with: @mensagem.email
    fill_in "Titulo", with: @mensagem.titulo
    click_on "Create Mensagem"

    assert_text "Mensagem was successfully created"
    click_on "Back"
  end

  test "should update Mensagem" do
    visit mensagem_url(@mensagem)
    click_on "Edit this mensagem", match: :first

    fill_in "Autor", with: @mensagem.autor
    fill_in "Corpo", with: @mensagem.corpo
    fill_in "Email", with: @mensagem.email
    fill_in "Titulo", with: @mensagem.titulo
    click_on "Update Mensagem"

    assert_text "Mensagem was successfully updated"
    click_on "Back"
  end

  test "should destroy Mensagem" do
    visit mensagem_url(@mensagem)
    click_on "Destroy this mensagem", match: :first

    assert_text "Mensagem was successfully destroyed"
  end
end
