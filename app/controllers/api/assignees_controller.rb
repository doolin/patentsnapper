class Api::AssigneesController < ApiController
  def index
    query_params = params.except(:id, :format, :controller, :action)
    @assignees = {} if query_params.empty?
    @assignees = Assignee.where(query_params) unless query_params.empty?
    
  end
  

end