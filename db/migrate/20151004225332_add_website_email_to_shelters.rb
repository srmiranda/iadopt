class AddWebsiteEmailToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :website, :string
    add_column :shelters, :email, :string
  end
end
