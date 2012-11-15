require 'spec_helper'

describe Assignee do

  [:asgseq, :asgtype, :assignee, :city, :country, :nationality, :patent, :residence, :state].each do |attr|
    it "responds to #{attr}" do
      a = Assignee.new
      a.respond_to?(attr).should be_true
    end
  end

end
