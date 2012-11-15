require 'spec_helper'

describe Invpat do

  [:firstname, :lastname, :street, :city, :state, :country, :zipcode, :lat, :lon,
   :invseq, :patent, :gyear, :appyearstr, :appdatestr, :assignee, :asgnum,
   :patentclass, :coauthor, :invnum, :lower, :upper].each do |attr|
    it "responds to #{attr}" do
      i = Invpat.new
      i.respond_to?(attr).should be_true
    end
  end

end
