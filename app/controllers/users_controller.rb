class UsersController < ApplicationController
  def show
    @name = current_user.name
    @articles = current_user.articles
  end
end
