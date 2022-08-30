class CreateMatchedSwipes < ActiveRecord::Migration[7.0]
  def change
    create_table :matched_swipes do |t|
      t.references :match, null: false, foreign_key: true
      t.references :swipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
