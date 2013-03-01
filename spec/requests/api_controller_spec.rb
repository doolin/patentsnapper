require 'spec_helper'
describe ApiController do

  # TODO: Doesn't work if test database not loaded. Should use fixtures instead.
  describe "assignees" do
    it "should respond to lowercase queries" do
      get 'api/assignees', assignee: 'unisys corporation'
      response.body.should_not == [].to_json
    end
  end

  invpat = FactoryGirl.create(:invpat, lastname: 'DURAND')
  describe "invpats" do
    it "should respond to lowercase queries" do
      get 'api/invpats', firstname: 'bill'
      response.body.should_not == [].to_json
    end
  end

  inventor = FactoryGirl.create(:inventor, lastname: 'LIN')
  describe "inventors" do
    it "should respond to lowercase queries" do
      get 'api/inventors', firstname: 'bill'
      response.body.should_not == [].to_json
    end
  end

  describe "patents" do
    # Currently no text in fields for patent database
  end

end
