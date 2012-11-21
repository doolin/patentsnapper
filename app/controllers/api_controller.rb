class ApiController < ApplicationController
  def index
    @users = Invpat.all
  end
end
