require 'spec_helper'
require_relative '../../../../apps/web/views/todos/create'

describe Web::Views::Todos::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/todos/create.html.erb') }
  let(:view)      { Web::Views::Todos::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
