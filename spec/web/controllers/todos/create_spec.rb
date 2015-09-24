require 'spec_helper'
require_relative '../../../../apps/web/controllers/todos/create'

describe Web::Controllers::Todos::Create do
  let(:action) { Web::Controllers::Todos::Create.new }
  # let(:params) { Hash[todo: { status: 0, title: 'Avdi Grim' }] }

  after do
    TodoRepository.clear
  end

  #it 'creates a new todo' do
  #  action.call(params)
  #  expect(action.todo.id).not_to be_nil
  #end

  #it 'redirects the user to todo listing' do
  #  response = action.call(params)
  #
  #  expect(response[0]).to eq 302
  #  expect(response[1]['Location']).to eql '/todos'
  #end

  describe 'with valid params' do
    let(:params) { Hash[todo: { status: 0, title: 'George Orwell' }] }

    it 'creates a new todo' do
      action.call(params)
      expect(action.todo.id).not_to be_nil
    end

    it 'redirects the user to the todos listing' do
      response = action.call(params)

      expect(response[0]).to eq 302
      expect(response[1]['Location']).to eql '/todos'
    end
  end

  describe 'with invalid params' do
    let(:params) { Hash[todo: {}] }

    it 're-renders the todos#new view' do
      response = action.call(params)
      expect(response[0]).to eq 200
    end
  end
end
