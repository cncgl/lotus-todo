require 'features_helper'

describe 'List todos' do
  before do
    TodoRepository.clear

    TodoRepository.create(Todo.new(status: 0, title: 'Meeting'))
    TodoRepository.create(Todo.new(status: 1, title: 'Shopping'))
  end


  it 'should displays each todos on the page' do
    visit '/todos'
    expect(page).to have_css('.todo', count: 2)
  end
end