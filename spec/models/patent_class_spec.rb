require 'spec_helper'

describe PatentClass do

  [:patent, :prim, :patentclass, :subclass].each do |attr|
    it "responds to #{attr}" do
      i = PatentClass.new
      i.respond_to?(attr).should be_true
    end
  end

end
