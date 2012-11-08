class PatentClass < ActiveRecord::Base
  attr_accessible :patent, :prim, :patentclass, :subclass
end
