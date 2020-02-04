require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in("player1_name", with: "Pikachu")
    fill_in("player2_name", with: "Charizard")
    click_button("Submit")
    expect(page).to have_text("Pikachu vs Charizard")
  end
end 