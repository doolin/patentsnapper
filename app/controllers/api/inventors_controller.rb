class Api::InventorsController < ApplicationController

  def show
    inventor = CGI.unescape(params[:id])
    @inventor = Inventor.where("lastname ILIKE ?", "%#{inventor}%")
  end
end
