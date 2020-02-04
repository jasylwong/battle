require 'spec_helper'

feature 'Testing health' do
    scenario 'shows health' do
        visit('/')
        fill_in("player1_name", with: "Pikachu")
        fill_in("player2_name", with: "Charizard")
        click_button("Submit")
        expect(page).to have_content("Player 1 health: 100HP")
    end
end