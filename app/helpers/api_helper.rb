module ApiHelper
  def query_values_to_upcase(params)
    params.each { |k, v| params[k] = v.upcase }
  end
end
