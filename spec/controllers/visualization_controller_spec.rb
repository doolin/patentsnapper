require 'spec_helper'

describe VisualizationController do

  describe "GET 'statistics'" do
    it "returns http success" do
      get 'statistics'
      response.should be_success
    end
  end

  describe "GET 'cleantech'" do
    it "returns http success" do
      get 'cleantech'
      response.should be_success
    end
  end

end
