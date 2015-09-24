require 'spec_helper'
require_relative '../../../../apps/web/views/todos/new'

class NewTodoParams < Lotus::Action::Params
  param :todo do
    param :status, presence: true
    param :title, presence: true
  end
end


describe Web::Views::Todos::New do
  let(:params)    { NewTodoParams.new({}) }
  let(:exposures) { Hash[params: params] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/todos/new.html.erb') }
  let(:view)      { Web::Views::Todos::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'displays list of errors when params contains errors' do
    # expect(view.foo).to eq exposures.fetch(:foo)
    params.valid?

    expect(rendered).to include('There was a problem with your submission')
    expect(rendered).to include('titile is required')
  end
end
