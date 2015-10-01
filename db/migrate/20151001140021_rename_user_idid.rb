class RenameUserIdid < ActiveRecord::Migration
  def change
    rename_column :clippings, :user_id_id, :user_id
  end
end
