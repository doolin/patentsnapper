require 'spec_helper'
describe ApiController do

  describe "assignees" do
    it "should respond to lowercase queries" do
      assignee = FactoryGirl.create(:assignee, assignee: 'UNISYS CORPORATION')
      get 'api/assignees', assignee: 'unisys corporation'
      response.body.should_not == [].to_json
    end
  end

  describe "invpats" do
    it "should respond to lowercase queries" do
      invpat = FactoryGirl.create(:invpat, lastname: 'DURAND')
      get 'api/invpats', lastname: 'durand'
      response.body.should_not == [].to_json
    end
  end

  describe "inventors" do
    it "should respond to lowercase queries" do
      inventor = FactoryGirl.create(:inventor, lastname: 'LIN')
      get 'api/inventors', lastname: 'lin'
      response.body.should_not == [].to_json
    end
  end

  describe "patents" do
    # Currently no text in fields for patent database
  end

end
