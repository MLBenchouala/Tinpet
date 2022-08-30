class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pets, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :matches, dependent: :destroy
  has_many :swipes, dependent: :destroy
  validates :name, :email, :adresse, :number, :age, :photos, :description, :genre, :orientation, presence: true
  validates :description,  length: { maximum: 140 }
end
