class Match < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'
  has_many :messages, -> { order(created_at: :desc) }, dependent: :destroy
  has_many :matched_swipes, dependent: :destroy
  # has_many :messages, -> { order(created_at: :desc) }
  # enum status: {
  #   pending: 0,
  #   match: 1,
  #   declined: 2,
  #   removed: 3
  # }


  validate :only_on_match_per_pair

  def only_on_match_per_pair
    user_ids = [self.user1.id, self.user2.id].sort
    matches_user_ids = Match.pluck(user1_id, user2_id).map(&:sort)
    # raise
    if user_ids.in? matches_user_ids
      errors.add("a match already exists")
    end

  end
end
