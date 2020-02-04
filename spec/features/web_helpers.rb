def sign_in_and_play
    visit('/')
    fill_in("player1_name", with: "Pikachu")
    fill_in("player2_name", with: "Charizard")
    click_button("Submit")
end