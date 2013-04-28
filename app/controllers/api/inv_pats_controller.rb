class Api::InvPatsController < ApiController
  def index
    query_params = params.except(:id, :format, :controller, :action, :key, :page)
    @invpats = {} if query_params.empty?
    @invpats = Invpat.where(query_params).order("lower DESC").page(params[:page]).per_page(10) unless query_params.empty?
  end
end
