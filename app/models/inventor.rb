class Inventor < ActiveRecord::Base
  attr_accessible :city, :code, :country, :firstname, :invseq, :lastname, :nationality, :patent, :state, :street, :zip
end
