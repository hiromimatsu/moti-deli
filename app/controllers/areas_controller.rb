class AreasController < ApplicationController
  def index
    @areas = Area.find(params[:id])
  end
end
