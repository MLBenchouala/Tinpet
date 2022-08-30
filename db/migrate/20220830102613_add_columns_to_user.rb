class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :age, :integer
    add_column :users, :address, :string
    add_column :users, :genre, :string
    add_column :users, :orientation, :string
  end
end
