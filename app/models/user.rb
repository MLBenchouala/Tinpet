class User < ApplicationRecord
  has_many :pets
  has_many :messages
  has_many :matches
  has_many :swipes


end
