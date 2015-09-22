require 'features_helper'

describe 'List todos' do

  it 'should displays each todos on the page' do
    visit '/todos'

    within '#todos' do
      expect(page).to have_css('.todo', count: 2)
    end
  end
end