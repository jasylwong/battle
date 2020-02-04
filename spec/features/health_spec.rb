require 'spec_helper'

feature 'View hit points' do
    scenario 'see player 2 hit points' do
        visit('/')
        fill_in("player1_name", with: "Pikachu")
        fill_in("player2_name", with: "Charizard")
        click_button("Submit")
        expect(page).to have_content("Player 1 health: 100HP")
    end
end