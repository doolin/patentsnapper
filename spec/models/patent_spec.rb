require 'spec_helper'

describe Patent do

  [:appdate, :appnum, :apptype, :appyear, :claims, :gdate, :gyear, :kind, :patent].each do |attr|
    it "responds to #{attr}" do
      i = Patent.new
      i.respond_to?(attr).should be_true
    end
  end

end
