class AddUsernameAvatarColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :avatar, :string, null: false,
      default: "/avatardefault.png"
  end
end
