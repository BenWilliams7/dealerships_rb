
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('paths for dealership', {:type => :feature}) do
#   it('adds a dealership') do
#     visit('/dealerships/new')
#     fill_in('word1', :with => 'ruby')
#     fill_in('word2', :with => 'bury')
#     click_button('Go!')
#     expect(page).to have_content('These words are anagrams but the first word is not a palindrome')
#   end
# end
