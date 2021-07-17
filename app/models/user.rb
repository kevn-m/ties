class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :referrals
  has_many :ties
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :messages
end
