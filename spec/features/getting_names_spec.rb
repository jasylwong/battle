require 'spec_helper'

feature 'Testing name collection' do
  scenario 'Can get names via forms and print to screen' do
    visit('/')
    fill_in("player1_name", with: "Pikachu")
    fill_in("player2_name", with: "Charizard")
    click_button("Submit")
    expect(page).to have_text("Pikachu")
    expect(page).to have_text("Charizard")
  end
end