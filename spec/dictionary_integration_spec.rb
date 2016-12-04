require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  it('stores the word the user would like to be defined') do
    visit('/word_form')
    fill_in('entry', :with => "pony")
    click_button('Add Word!')
    expect(page).to have_content("pony")
  end
end

describe('the definition path', {:type => :feature}) do
  it('stores the definition corresponding to the word the user entered') do
    visit('/definitionform')
    fill_in('entry', :with => "a small horse")
    click_button('Add definition')
    expect(page).to have_content("a small horse")
  end
end
