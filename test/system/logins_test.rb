require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  test "Login com credencias validas" do
    user = FactoryBot.create (:user, password: "password", password_confirmation: "password")

    visit root_path
    click_link "Entrar"

    fill_in "E-mail", with: user.email
    fill_in "Semha", with: "password"

    click_buttom "Entrar"

    assert_text "Bem vindo Darth Vader!"
  end
end
