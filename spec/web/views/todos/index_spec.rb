require 'spec_helper'
require_relative '../../../../apps/web/views/todos/index'

describe Web::Views::Todos::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/todos/index.html.erb') }
  let(:view)      { Web::Views::Todos::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
