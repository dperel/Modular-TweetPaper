class CreateFrontpageFrontpages < ActiveRecord::Migration
  def change
    create_table :frontpage_frontpages do |t|
      t.string :title
      t.string :tweet_1
      t.string :tweet_2
      t.string :tweet_3
      t.string :tweet_4
      t.string :tweet_5
      t.string :picture_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
