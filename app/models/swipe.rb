class Swipe < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  has_many :matched_swipes
end
