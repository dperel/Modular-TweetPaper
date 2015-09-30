class Clipping < ActiveRecord::Base

  #Article model doesn't lend itself to saving tweets individually
  #--> transfer all the Article attributes to the Clipping object?
  #

  def make(clipping_params, current_user)
    @clipping = Clipping.new
    @article = Article.where(id=clipping_params["format"])
    @clipping.title = @article[0].title
    @clipping.tweet = @article[0].tweet_1
    @clipping.user_id_id = @article[0].user_id
    @clipping.save
  end
end
