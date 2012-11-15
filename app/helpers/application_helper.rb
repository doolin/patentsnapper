module ApplicationHelper

  def template_id
    if params[:controller] == "high_voltage/pages"
      {:id => params[:id] }
    else
      {:id => params[:action] }
    end
    
  end

  def template_class
    unless params[:controller].nil?
      {:class => "#{params[:controller].gsub(/\//,'-')} #{params[:action]}"}
    else
      {:class => "FIXME"}
    end
  end

  def is_public_home?
    if params[:controller] == 'pages' && params[:action] == "index" && !current_user
      true
    end
  end

  # Method for handling message types in Bootstrap.
  def twitterized_type(type)
    case type
      when :alert
        "warning"
      when :error
        "error"
      when :notice
        "info"
      when :success
        "success"
      when :notice
        "notice"
      else
        type.to_s
    end
  end
end
