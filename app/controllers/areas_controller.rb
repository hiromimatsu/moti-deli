class AreasController < ApplicationController
  def index
    @area = Area.new
    @area = Area.find(params[:id])
  end

end
