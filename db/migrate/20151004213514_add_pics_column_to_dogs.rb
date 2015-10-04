class AddPicsColumnToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :url, :string
  end
end
