require 'spec_helper'

RSpec.describe Todo do
  # place your tests here
  it 'can be initialised with attributes' do
    todo = Todo.new(title: '買い物')
    expect(todo.title).to eq '買い物'
  end
end
