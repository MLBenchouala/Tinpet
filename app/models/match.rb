class Match < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'
  has_many :messages, dependent: :destroy
  has_many :matched_swipes
  # has_many :messages, -> { order(created_at: :desc) }
  # enum status: {
  #   pending: 0,
  #   match: 1,
  #   declined: 2,
  #   removed: 3
  # }
end
