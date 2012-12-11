class Api::CitationsController < ApiController

  def index
    query_params = params.except(:id, :format, :controller, :action, :key)
    @citations = {} if query_params.empty?
    @citations = Citation.where(query_params) unless query_params.empty?
  end

end
