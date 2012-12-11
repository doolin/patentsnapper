class Api::InvPatsController < ApiController
  
  def index
    query_params = params.except(:id, :format, :controller, :action)
    @invpats = {} if query_params.empty?
    #@invpats = Invpat.where(query_values_to_upcase(query_params)) unless query_params.empty?
    @invpats = Invpat.where(query_params).group(&:lower) unless query_params.empty?
  end
  
end
