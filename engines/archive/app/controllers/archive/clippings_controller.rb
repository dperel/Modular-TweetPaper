module Archive
  class ClippingsController < ApplicationController
      before_action :establish_connection

    def new
    end

    def create
    end

    def index
      @clippings = Clipping.where(user_id_id = current_user.id)
    end

    private

    def clippings_params
      params.permit(:title, :tweet_1, :tweet_2, :tweet_3, :tweet_4, :tweet_5)
    end

    def establish_connection
      Clipping.connection
    end


  end
end
