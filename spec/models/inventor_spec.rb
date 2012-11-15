require 'spec_helper'

describe Inventor do

  [:patent, :city, :code, :country, :firstname,
   :lastname, :nationality, :state, :street, :zip].each do |attr|
    it "responds to #{attr}" do
      i = Inventor.new
      i.respond_to?(attr).should be_true
    end
  end

end
