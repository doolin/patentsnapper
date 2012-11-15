require 'spec_helper'

describe Lawyer do

  [:firstname, :lastname, :lawcountry, :lawseq, :orgname, :patent].each do |attr|
    it "responds to #{attr}" do
      i = Lawyer.new
      i.respond_to?(attr).should be_true
    end
  end

end
