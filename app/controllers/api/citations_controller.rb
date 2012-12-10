class Api::CitationsController < ApiController

  def show
    patent = CGI.unescape(params[:id])
    @citation = Citation.find_by_patent(patent)
  end
end
