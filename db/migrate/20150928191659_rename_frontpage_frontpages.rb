class RenameFrontpageFrontpages < ActiveRecord::Migration
  def self.up
     rename_table :frontpage_frontpages, :articles
  end

  def self.down
     rename_table :articles, :frontpage_frontpages
  end
end
