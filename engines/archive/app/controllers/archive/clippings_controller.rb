module Archive
  class ClippingsController < ApplicationController

    def new
    end

    def create
    end

    def index
    end

    private
    
    def clippings_params
      params.permit(:title, :tweet_1, :tweet_2, :tweet_3, :tweet_4, :tweet_5)
    end


  end
end
