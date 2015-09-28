require_dependency "frontpage/application_controller"

module Frontpage
  class ArticlesController < ApplicationController
    def new
    end

    def create
    end

    def index
      binding.pry
      @articles = SessionsController::Article.all
    end
  end
end
