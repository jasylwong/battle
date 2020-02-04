require 'spec_helper'

feature 'View hit points' do
    scenario 'see player 2 hit points' do
        sign_in_and_play
        expect(page).to have_content("Player 1 health: 100HP")
    end
end