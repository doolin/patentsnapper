class Api::InventorsController < ApiController

  def show
    inventor = CGI.unescape(params[:id])
    @inventor = Inventor.where("lastname ILIKE ?", "%#{inventor}%")
  end
end
