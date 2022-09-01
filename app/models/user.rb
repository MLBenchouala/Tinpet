class User < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pets, dependent: :destroy
  has_many :messages, dependent: :destroy
  # has_many :matches, dependent: :destroy
  has_many :swipes, dependent: :destroy
  validates :name, :gender, presence: true
  validates :walk, :more, inclusion: { in: [ true, false ] }
  has_many :matches,
            ->(user) {
              unscope(where: :user_id)
              .where("user1_id = :user_id OR user2_id = :user_id", user_id: user.id)
            },
            class_name: 'Match',
            dependent: :destroy
  has_many :messages, dependent: :destroy

  # validates :description,  length: { maximum: 400 }

  has_many_attached :photos

  def matches
    Match.where(user1: self).or(Match.where(user2: self))
  end
end
