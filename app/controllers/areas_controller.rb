# class AreasController < ApplicationController
#   def new
#     @area = Area.new
#   end

#   def create
#     @area = Area.create(area_params)
#     redirect_to root_path
#   end

#   private
#   def area_params
#     params.require(:area).permit(:name)
#   end
# end