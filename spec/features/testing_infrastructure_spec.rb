require 'spec_helper'

# describe Battle do
#   include Rack::Test::Methods

#   def app
#     Battle.new
#   end

#   it "displays home page" do 
#     get '/'
#     expect(last_response.body).to include('Testing infrastructure working!')
#   end
# end

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content("Who will be entering the Saffron City Gym?")
  end
end