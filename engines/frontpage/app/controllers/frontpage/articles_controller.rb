
module Frontpage
  class ArticlesController < ApplicationController
    before_action :establish_connection

    def new
    @article = Article.new
    end

    def create
      @article = Article.new
      @article.send :populate, article_params, current_user
      @articles = Article.where(user_id = current_user.id)
      render "index"
    end

    def show
      binding.pry
    end

    def index
      @articles = Article.all
    end

  def refresh
    old_articles = SessionsController::Article.where(user_id = current_user.id)
    old_articles.map do |article|
      Frontpage::Article.refresh(article, current_user)
    end
    @articles = SessionsController::Article.where(user_id = current_user.id)
    render "index"
  end


  def destroy
    SessionsController::Article.destroy(params[:id])
    @articles = SessionsController::Article.where(user_id = current_user.id)
    render "index"
  end


  private

  def article_params
    params.permit(:title, :utf8, :commit, :authenticity_token)
  end

  def establish_connection
    Article.connection
  end

  end
end
