class Api::InvPatsController < ApplicationController

  def show
    patent = CGI.unescape(params[:id])
    @invpat = Invpat.find_by_lastname(patent)
  end
end
