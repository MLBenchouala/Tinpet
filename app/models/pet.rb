class Pet < ApplicationRecord
  belongs_to :user
  validates :race, :age, :photos, :sexe, :user_id, :description, presence: true
end
