require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_text("Player 1\nVERSUS\nPlayer 2")
  end
end 