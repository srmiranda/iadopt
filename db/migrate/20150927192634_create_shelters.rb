class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :phone, null: false
      t.string :url
    end
    add_index :shelters, :name, unique: true
  end
end
