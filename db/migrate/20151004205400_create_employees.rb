class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.belongs_to :shelter
      t.belongs_to :user
    end
  end
end
