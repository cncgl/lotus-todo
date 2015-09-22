require 'features_helper'

describe 'Visit home' do

  it 'should is successful' do
    visit '/'

    expect(page).to have_content('Bookshelf')
  end
end