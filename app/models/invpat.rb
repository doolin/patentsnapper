class Invpat < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :street, :city, :state, :country, :zipcode, :lat, :lon,
   :invseq, :patent, :gyear, :appyearstr, :appdatestr, :assignee, :asgnum,
   :patentclass, :coauthor, :invnum, :lower, :upper
end
