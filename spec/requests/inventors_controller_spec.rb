require 'spec_helper'
describe Api::InventorsController do
	it "should respond to lowercase queries" do
		get 'api/inventors', firstname: 'bill'
		response.body.should_not == [].to_json
	end
end
