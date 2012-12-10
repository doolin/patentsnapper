require 'spec_helper'

describe ApiHelper do
  
  describe "query values to upcase" do
    
    it "takes query params and converts them to upcase" do
      query_params = { "first" => "second", "third" => "fourth" }
      helper.query_values_to_upcase(query_params)
      query_params["first"].should eq("SECOND")
    end
    
  end
  
end
