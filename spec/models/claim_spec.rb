require 'spec_helper'

describe Claim do

  [:patent, :claim].each do |attr|
    it "responds to #{attr}" do
      i = Claim.new
      i.respond_to?(attr).should be_true
    end
  end

end
