feature 'switch turns' do
    context 'shows whose turn it is' do
        scenario 'at the start of the game' do
            sign_in_and_play
            expect(page).to have_content "Player 1's turn"
        end

        scenario 'after player 1\'s turn' do
            sign_in_and_play
            click_button("Attack")
            expect(page).not_to have_content "Player 1's turn"
            # expect(page).to have_content "Player 2's turn"
        end
    end
end