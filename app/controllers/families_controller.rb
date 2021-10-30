class FamiliesController < ApplicationController
  before_action(:require_login)
  
  def index
    @families = Family.all
  end

  def show
    #currently unused
    @family = Family.find_by(id: params[:id])
  end
end
