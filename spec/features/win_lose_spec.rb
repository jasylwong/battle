require 'spec_helper'

feature 'shows win or lose' do
    scenario 'player 1 wins' do
        sign_in_and_play
        19.times { click_button("Attack") }
        expect(page).to have_content("Player 1 wins!")
    end
end