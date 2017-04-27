require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('paths for dealership', {:type => :feature}) do
  it('adds a dealership') do
    visit('/dealerships/new')
    fill_in('name', :with => 'ruby')
    click_button('Add Dealership')
    fill_in('make', :with => 'Tiger')
    click_button('Add Vehicle')
    click_link('See Vehicle List')
    expect(page).to have_content('Tiger')
  end
end

describe('paths for dealership', {:type => :feature}) do
  it('adds a car to an exisiting dealership') do
    visit('/dealerships/new')
    fill_in('name', :with => 'sara')
    click_button('Add Dealership')
    fill_in('make', :with => 'something')
    click_button('Add Vehicle')
    click_link('Add a new vehicle')
    page.has_xpath?("/dealerships/#{:id}/vehicles/new")
  end
end
