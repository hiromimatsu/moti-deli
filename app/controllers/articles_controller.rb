class ArticlesController < ApplicationController
  before_action :move_to_index, expect: :index

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
    redirect_to root_path
    else
      render new_article_path
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:restaurant, :image, :instagram, :menu, :rule, :area_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
