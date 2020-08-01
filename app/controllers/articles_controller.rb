class ArticlesController < ApplicationController
  before_action :move_to_index, expect: [:index, :search]

  def index
      @articles = Article.where(area_id: params[:area_id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    if @article.save
      redirect_to root_path
    else
      render new_article_path
    end
  end

  def destroy
    article = Article.find(params[:id])
    if article.destroy
      redirect_to root_path
    else
      render article_path
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    if article.update(article_params)
      redirect_to article_path
    else
      render edit_article_path
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def search
    @articles = Article.search(params[:keyword])
    respond_to do |format|
      format.html
      format.json
    end
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