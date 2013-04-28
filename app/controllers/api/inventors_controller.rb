class Api::InventorsController < ApiController
  def index
    query_params = params.except(:id, :format, :controller, :action, :key, :page)
    @inventors = {} if query_params.empty?
    @inventors = Inventor.where(query_params).page(params[:page]).per_page(10) unless query_params.empty?
  end
end
