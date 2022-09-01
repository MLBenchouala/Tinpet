class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :user1, index: true, foreign_key: { to_table: :users }, null: false
      t.references :user2, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end
  end
end
