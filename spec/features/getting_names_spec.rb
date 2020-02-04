require 'spec_helper'

feature 'Testing name collection' do
  scenario 'Can get names via forms and print to screen' do
    visit('/')
    fill_in("player1_name", with: "Jackson")
    click_button("Submit")
    expect(page).to have_text("Jackson")
  end
end