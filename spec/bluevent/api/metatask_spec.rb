require 'spec_helper'

describe API::V1::Tasker::MetaTask do

  it 'should create a new procedure with the generic name.' do
    post "#{@base_url}/procedures", {:description => 'Description'}
    expect_json({:name => Model::Procedure::DEFAULT_NAME, :description => 'Description'})
  end

end