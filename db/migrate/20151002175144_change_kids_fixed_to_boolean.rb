class ChangeKidsFixedToBoolean < ActiveRecord::Migration
  def up
    remove_column :dogs, :kids
    remove_column :dogs, :fixed
    add_column :dogs, :kids, :boolean
    add_column :dogs, :fixed, :boolean
  end

  def down
    remove_column :dogs, :kids
    remove_column :dogs, :fixed
    add_column :dogs, :kids, :string
    add_column :dogs, :fixed, :string
  end
end
