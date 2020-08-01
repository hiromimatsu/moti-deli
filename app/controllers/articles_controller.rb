class ArticlesController < ApplicationController
  before_action :move_to_index, expect: [:index, :search]

  def index
      @articles = Article.where(area_id: params[:area_id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "投稿が完了しました"
      redirect_to root_path
    else
      flash[:alert] = "入力漏れがあります"
      redirect_to new_article_path
    end
  end

  def destroy
    article = Article.find(params[:id])
    if article.destroy
      flash[:notice] = "投稿を削除しました"
      redirect_to root_path
    else
      flash[:alert] = "削除に失敗しました"
      render article_path
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    if article.update(article_params)
      flash[:notice] = "投稿を編集しました"
      redirect_to article_path
    else
      flash[:alert] = "編集に失敗しました"
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