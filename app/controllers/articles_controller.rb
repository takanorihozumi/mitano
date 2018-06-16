class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @articleContents = ArticleContent.where(article_id: @article.id)
  end
end
