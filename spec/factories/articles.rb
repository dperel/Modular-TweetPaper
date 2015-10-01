FactoryGirl.define do
  factory :article do
    title 'News'
    picture_url 'http://www.tbp.org/Images/Logos/twitter-bird-blue-on-whiteSMALL.png'
    user_id '1'

    trait :tweetbatch do 
      tweet_1 'Newsitem1'
      tweet_2 'Newsitem2'
      tweet_3 'Newsitem3'
      tweet_4 'Newsitem4'
      tweet_5 'Newsitem5'
    end
  end
end
