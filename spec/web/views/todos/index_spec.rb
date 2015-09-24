require 'spec_helper'
require_relative '../../../../apps/web/views/todos/index'

describe Web::Views::Todos::Index do
  let(:exposures) { Hash[todos: []] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/todos/index.html.erb') }
  let(:view)      { Web::Views::Todos::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #todos' do
    expect(view.todos).to eq exposures.fetch(:todos)
  end

  describe 'when there are no todos' do
    it 'shows a placeholder message' do
      expect(rendered).to include('<p class="placeholder">There are no todos yet.</p>')
    end
  end

  describe 'when there are todos' do
    let(:todo1)     { Todo.new(status: 0, title: 'Martin Fowler') }
    let(:todo2)     { Todo.new(status: 1, title: 'Eric Evans') }
    let(:exposures) { Hash[todos: [todo1, todo2]] }

    it 'lists them all' do
      expect(rendered.scan(/class="todo"/).count).to equal 2
      expect(rendered).to include('Martin Fowler')
      expect(rendered).to include('Eric Evans')
    end

    it 'hides the placeholder message' do
      expect(view.render).not_to include('<p class="placeholder">There are no todos yet.</p>')
    end
  end
end
