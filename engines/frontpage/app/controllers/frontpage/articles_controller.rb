require_dependency "frontpage/application_controller"
require File.join(Rails.root, "app", "models", "article")
require File.join(Rails.root, "app", "controllers", "sessions_controller")


module Frontpage
  class ArticlesController < ApplicationController
    def new
    @article = SessionsController::Article.new
    end

    def create
      Frontpage::Article.populate(article_params, current_user)
      @articles = SessionsController::Article.where(user_id = current_user.id)
      @article = SessionsController::Article.last
      render "index"
    end

    def show
      binding.pry
    end

    def index
      @article = SessionsController::Article.new
      @articles = SessionsController::Article.all
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
    params.permit(:title, :id)
  end


  end
end
