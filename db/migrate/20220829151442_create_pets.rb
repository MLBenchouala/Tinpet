class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.integer :user_id
      t.string :race
      t.integer :age
      t.string :sexe

      t.timestamps
    end
  end
end
