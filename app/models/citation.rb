class Citation < ActiveRecord::Base
  attr_accessible :category, :cit_country, :cit_date, :cit_kind, :cit_name, :citation, :citseq, :patent
end
