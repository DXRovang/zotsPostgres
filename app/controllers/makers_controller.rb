class MakersController < ApplicationController
  
  def index
    if params[:search]
      @makers = Maker.search(params[:search])
    end
  end

  def show
    #currently unused if no instruments have this maker
    @maker = Maker.find_by(id: params[:id])
  end

end
