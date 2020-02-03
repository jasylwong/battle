require 'spec_helper'

describe Battle do
  include Rack::Test::Methods

  def app
    Battle.new
  end

  it "displays home page" do 
    get '/'
    expect(last_response.body).to include('Testing infrastructure working!')
  end

end
