class User < ApplicationRecord
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

  # validates :description,  length: { maximum: 400 }

  has_many_attached :photos

  def matches
    Match.where(user1: self).or(Match.where(user2: self))
  end
end
