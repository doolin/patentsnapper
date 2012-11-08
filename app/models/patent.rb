class Patent < ActiveRecord::Base
  attr_accessible :appdate, :appnum, :apptype, :appyear, :claims, :gdate, :gyear, :kind, :patent
end
