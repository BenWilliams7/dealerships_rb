
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('paths for dealership', {:type => :feature}) do
  it('adds a dealership') do
    visit('/dealerships/new')
    fill_in('name', :with => 'ruby')
    click_button('Add Dealership')
    expect(page).to have_content('Add')
  end
end
