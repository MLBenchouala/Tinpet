class Pet < ApplicationRecord
  belongs_to :user
  validates :race, :age, :sexe, :user_id, :description, :name, presence: true
  has_many_attached :photos
end
