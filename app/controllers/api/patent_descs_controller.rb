class Api::PatentDescsController < ApiController
  def index
    query_params = params.except(:id, :format, :controller, :action)
    @patent_descs = {} if query_params.empty?
    @patent_descs = PatDesc.where(query_params) unless query_params.empty?   
  end
  
end