require 'spec_helper'

feature 'getting players HP' do
    scenario 'displays HP' do
        sign_in_and_play
        expect(page).to have_content('Player 1 health: 100HP')
    end

    scenario 'displays HP' do
        sign_in_and_play
        expect(page).to have_content('Player 2 health: 100HP')
    end
end