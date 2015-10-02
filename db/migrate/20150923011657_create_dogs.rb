class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.string :size, null: false
      t.string :kids, null: false
      t.decimal :age, null: false
      t.string :gender, null: false
      t.string :fixed, null: false
      t.belongs_to :shelter

      t.timestamps
    end
    add_index(:dogs, :breed)
  end
end
