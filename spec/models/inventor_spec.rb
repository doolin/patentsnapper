require 'spec_helper'

describe Inventor do

  it "responds to patent" do
    i = Inventor.new
    i.respond_to?(:patent).should be_true
  end
end
