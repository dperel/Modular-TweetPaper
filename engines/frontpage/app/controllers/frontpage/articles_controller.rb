require_dependency "frontpage/application_controller"

module Frontpage
  class ArticlesController < ApplicationController


    def new
    @article = SessionsController::Article.new
    end

    def create
      Frontpage::Article.populate(article_params, current_user)
      @articles = SessionsController::Article.where(user_id = current_user.id)
      @article = SessionsController::Article.last
    end


    def index
      @article = SessionsController::Article.new
      @articles = SessionsController::Article.all
    end

  def refresh
    current_user.articles.map do |article|
      SessionsController::Article.refresh(article, current_user)
    end
    @articles = SessionsController::Article.where(user_id = current_user.id)
    render :index
  end


  def destroy
    SessionsController::Article.destroy(params[:id])
    @articles = SessionsController::Article.where(user_id = current_user.id)
    render :index
  end


  private

  def article_params
    params.permit(:title)
  end


  end
end
