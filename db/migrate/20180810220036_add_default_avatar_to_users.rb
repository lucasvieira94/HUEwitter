class AddDefaultAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :default_avatar, :string
  end
  add_index :relationships, :follower_id
  add_index :relationships, :followed_id
  add_index :relationships, [:follower_id, :followed_id], unique: true
end
