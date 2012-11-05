class PagesController < ActionController::Base

  def home
    render "home", :layout => 'application'
  end

end
