require 'features_helper'

describe 'Todos' do
  after do
    TodoRepository.clear
  end

  it 'can create a new todo' do
    visit '/todos/new'

    within 'form#todo-form' do
      fill_in 'Status',  with: '1'
      fill_in 'Title', with: 'Some title'

      click_button 'Create'
    end

    expect(current_path).to eql '//todos'
    expect(page).to have_content 'Some title'
  end
end