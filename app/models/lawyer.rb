class Lawyer < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :lawcountry, :lawseq, :orgname, :patent
end
