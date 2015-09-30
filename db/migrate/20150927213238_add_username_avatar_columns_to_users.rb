class AddUsernameAvatarColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :avatar, :string, null: false,
      default: "https://s-media-cache-ak0.pinimg.com/236x/8a/20/6d/8a206d9e7b2db7cf4bdb3ca9f1501fbf.jpg"
  end
end
