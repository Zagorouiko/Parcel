require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
require('pry')

describe('parcel path', {:type => :feature}) do
  it('User inputs dimensions and weight to calculate shipping costs') do
    visit('/')
    fill_in('length', :with => 2)
    fill_in('width', :with => 3)
    fill_in('height', :with => 4)
    fill_in('weight', :with => 10)
    fill_in('distance', :with => 50)
    click_button('Calculate shipping')
    expect(page).to have_content('Shipping costs: 130')
  end

  it('User inputs dimensions and weight to calculate shipping costs') do
    visit('/')
    fill_in('length', :with => 4)
    fill_in('width', :with => 4)
    fill_in('height', :with => 4)
    fill_in('weight', :with => 10)
    fill_in('distance', :with => 50)
    check 'gift_wrap'
    click_button('Calculate shipping')
    expect(page).to have_content('Shipping costs: 256')
  end

end
