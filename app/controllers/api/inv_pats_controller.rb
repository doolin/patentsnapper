class Api::InvPatsController < ApplicationController

  def show
    patent = CGI.unescape(params[:id])
    @invpat = Invpat.where("lastname ILIKE ?", "%%#{patent}%%")
  end
end
