class Api::PatentsController < ApiController
  def index
    query_params = params.except(:id, :format, :controller, :action)
    @patents = {} if query_params.empty?
    @patents = Patent.where(query_params) unless query_params.empty?
  end
end