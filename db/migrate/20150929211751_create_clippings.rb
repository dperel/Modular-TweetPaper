class CreateClippings < ActiveRecord::Migration
  def change
    create_table :clippings do |t|
      t.string :title
      t.string :tweet
      t.belongs_to :user_id

      t.timestamps null: false
    end
  end
end
