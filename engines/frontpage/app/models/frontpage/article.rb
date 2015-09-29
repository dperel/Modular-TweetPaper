module Frontpage
  class Article < ActiveRecord::Base

    def self.populate(article_params, current_user)
      establish_client(current_user)
      @article = SessionsController::Article.new()
      results = []
      @@client.search(article_params["title"], result_type: "popular").take(5).collect do |tweet|
          results.push(tweet)
      end
    @article.title = article_params["title"]
    results[0] ? @article.tweet_1 = "#{results[0].user.screen_name}: #{results[0].text}" : @article.tweet_1 = "No tweet :/"
    results[1] ? @article.tweet_2 = "#{results[1].user.screen_name}: #{results[1].text}" : @article.tweet_2 = "No tweet :/"
    results[2] ? @article.tweet_3 = "#{results[2].user.screen_name}: #{results[2].text}" : @article.tweet_3 = "No tweet :/"
    results[3] ? @article.tweet_4 = "#{results[3].user.screen_name}: #{results[3].text}" : @article.tweet_4 = "No tweet :/"
    results[4] ? @article.tweet_5 = "#{results[4].user.screen_name}: #{results[4].text}" : @article.tweet_5 = "No tweet :/"
    @article.user_id = current_user.id
    @article.save
  end

  def self.establish_client(current_user)
    binding.pry
    @@client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["twitter_api_key"]
      config.consumer_secret     = ENV["twitter_api_secret"]
      config.access_token        = current_user.token
      config.access_token_secret = current_user.secret
    end
  end

  def self.refresh(outdated_article, current_user)
    Article.populate(outdated_article, current_user)
    outdated_article.destroy
  end
  end
end
