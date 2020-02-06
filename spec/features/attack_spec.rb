# require 'spec_helper'

# feature 'attack oponent' do
#     scenario 'player 1 attacks player 2' do
#         sign_in_and_play
#         click_button('Attack')
#         expect(page).to have_content("Player 1 attacked Player 2!")
#     end
# end

feature 'attack' do
    scenario 'player 1 attacks player 2' do
        sign_in_and_play
        click_button("Attack")
        expect(page).to have_content('Player 1 attacked Player 2!')
    end

    scenario "player 1's attack reduces player 2's HP" do
        sign_in_and_play
        click_button("Attack")
        expect(page).to have_content('Player 2 health: 90HP')
    end
end