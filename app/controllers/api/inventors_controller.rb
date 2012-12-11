class Api::InventorsController < ApiController

  def index
    query_params = params.except(:id, :format, :controller, :action, :key)
    @inventors = {} if query_params.empty?
    @inventors = Inventor.where(query_params) unless query_params.empty?
  end
end
