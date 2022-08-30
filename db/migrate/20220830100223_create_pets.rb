class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :race
      t.integer :age
      t.string :sexe
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
