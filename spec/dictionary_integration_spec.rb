require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  it('adds and saves the word the user inputs') do
    visit('/')
    fill_in('entry', :with => "plant")
    click_button('Add Word')
    expect(page).to have_content("plant")
  end
end

describe('the definition path', {:type => :feature}) do
  it('adds and saves the users inputted definition') do
    visit('/')
    fill_in('definition', :with => "any member of the kingdom Plantae")
    click_button('Add definition')
    expect(page).to have_content("any member of the kingdom Plantae")
  end
end
