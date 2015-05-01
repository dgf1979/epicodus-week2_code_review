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

end
