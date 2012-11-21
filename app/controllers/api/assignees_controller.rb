class Api::AssigneesController < ApplicationController
  def index
    @assignees = Assignee.limit(30)
  end
  
  def show
    assignee = CGI.unescape(params[:id])
    @assignee = Assignee.where("assignee ILIKE ?", "%#{assignee}%")
  end
  
  def patent
    @assignee = Assignee.find_by_patent(params[:id])
  end
  
  def asgtype
    @assignees = Assignee.find_by_asgtype(params[:id])
  end
end