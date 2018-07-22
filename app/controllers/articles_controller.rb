class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order('updated_at desc')
  end

  def show
    @article = Article.find(params[:id])
    @articleContents = ArticleContent.where(article_id: @article.id)
    @articles = Article.all.order('updated_at desc')
  end
end
