class Assignee < ActiveRecord::Base
  attr_accessible :asgseq, :asgtype, :assignee, :city, :country, :nationality, :patent, :residence, :state
end
