class CreateSwipes < ActiveRecord::Migration[7.0]
  def change
    create_table :swipes do |t|
      t.integer :user_id
      t.integer :pet_id
      t.boolean :liked

      t.timestamps
    end
  end
end
