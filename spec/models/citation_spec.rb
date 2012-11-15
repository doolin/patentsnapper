require 'spec_helper'

describe Citation do

  [:category, :cit_country, :cit_date, :cit_kind, :cit_name, :citation, :citseq, :patent].each do |attr|
    it "responds to #{attr}" do
      i = Citation.new
      i.respond_to?(attr).should be_true
    end
  end

end
