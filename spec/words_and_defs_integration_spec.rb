require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('Sinatra pre-flight check', {:type => :feature}) do
  #framework test
  it('verifies a test route is getting to a test layout page') do
    visit('/test')
    expect(page).to have_content('Sinatra OK')
  end
end


describe('Word integration', {:type => :feature}) do

  it('verfies addition of new words via form post to displayed list') do
    visit('/words')
    fill_in('word', :with => 'insanity')
    click_button('Add New Word')
    expect(page).to have_content('INSANITY')
  end

  it('clears the app to the original state', {:type => :feature}) do
    visit('/words')
    fill_in('word', :with => 'insanity')
    click_button('Add New Word')
    expect(page).to have_content('INSANITY')
    click_link('Reset')
    expect(page).should_not have_content('INSANITY')
  end

end

describe('Definition integration', {:type => :feature}) do

  it('verfies addition of new definitions via form post to displayed list') do
    #make sure the test word exists
    visit('/words')
    fill_in('word', :with => 'insanity')
    click_button('Add New Word')
    #follow the link to the definitions
    click_link('INSANITY')
    fill_in('definition', :with => 'doing the same thing and expecting different results')
    click_button('Add Definition')
    #add the definition to the word via the form
    expect(page).to have_content('doing the same thing and expecting different results')
  end

end
