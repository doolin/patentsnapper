class Api::ClaimsController < ApplicationController

  def show
    patent = CGI.unescape(params[:id])
    @claim = Claim.find_by_patent(patent)
  end
end
