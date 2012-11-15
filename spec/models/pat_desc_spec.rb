require 'spec_helper'

describe PatDesc do

  [:abstract, :patent, :title].each do |attr|
    it "responds to #{attr}" do
      i = PatDesc.new
      i.respond_to?(attr).should be_true
    end
  end

end
