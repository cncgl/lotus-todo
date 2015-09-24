require 'spec_helper'
require_relative '../../../../apps/web/controllers/todos/new'

describe Web::Controllers::Todos::New do
  let(:action) { Web::Controllers::Todos::New.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
