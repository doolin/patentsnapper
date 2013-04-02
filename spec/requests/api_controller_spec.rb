require 'spec_helper'
describe ApiController do

<<<<<<< HEAD
  assignee = FactoryGirl.create(:assignee, assignee: 'UNISYS CORPORATION')
=======
  # TODO: Doesn't work if test database not loaded. Should use fixtures instead.
>>>>>>> ff09f0e524297d3e4bc750cedd259dbcf0850fd3
  describe "assignees" do
    it "should respond to lowercase queries" do
      get 'api/assignees', assignee: 'unisys corporation'
      response.body.should_not == [].to_json
    end
  end

<<<<<<< HEAD
  invpat = FactoryGirl.create(:invpat, lastname: 'DURAND')
=======
>>>>>>> ff09f0e524297d3e4bc750cedd259dbcf0850fd3
  describe "invpats" do
    it "should respond to lowercase queries" do
      get 'api/invpats', lastname: 'durand'
      response.body.should_not == [].to_json
    end
  end

<<<<<<< HEAD
  inventor = FactoryGirl.create(:inventor, lastname: 'LIN')
=======
>>>>>>> ff09f0e524297d3e4bc750cedd259dbcf0850fd3
  describe "inventors" do
    it "should respond to lowercase queries" do
      get 'api/inventors', lastname: 'lin'
      response.body.should_not == [].to_json
    end
  end

  describe "patents" do
    # Currently no text in fields for patent database
  end

end
