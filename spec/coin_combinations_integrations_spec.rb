require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combination path', {:type => :feature}) do

  it('takes a number from the user and returns the least number of quarters, dimes, nickels and pennies') do
    visit('/')
    fill_in('number', with => "48")
    click_button('Submit')
    expect(page).to have_content([1, 2, 0, 3])
  end
end
