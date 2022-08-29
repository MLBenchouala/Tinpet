class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :content
      t.integer :match_id

      t.timestamps
    end
  end
end
