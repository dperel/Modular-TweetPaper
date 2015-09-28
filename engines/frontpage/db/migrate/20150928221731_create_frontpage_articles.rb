class CreateFrontpageArticles < ActiveRecord::Migration
  def change
    create_table :frontpage_articles do |t|
      t.string :title
      t.string :picture_url
      t.string :tweet_1
      t.string :tweet_2
      t.string :tweet_3
      t.string :tweet_4_string
      t.string :tweet_5
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
