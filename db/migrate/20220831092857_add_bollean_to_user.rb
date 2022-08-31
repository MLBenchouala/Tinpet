class AddBolleanToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :walk, :boolean
    add_column :users, :more, :boolean
  end
end
