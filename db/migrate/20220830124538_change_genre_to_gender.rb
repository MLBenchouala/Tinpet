class ChangeGenreToGender < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :genre, :gender
  end
end
