class Api::PatentsController < ApplicationController
  def index
    
  end
  
  def show
    patent = CGI.unescape(params[:id])
    @patent = Patent.where("patent like ?", "%#{patent}%")
  end
end