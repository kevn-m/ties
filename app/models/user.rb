class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :referrer, foreign_key: 'referrer_user_id', class_name: 'Referral'
  has_many :recommended, foreign_key: 'recommended_user_id', class_name: 'Referral'
  has_many :to_referrals, foreign_key: 'to_user_id', class_name: 'Referral'
  has_many :ties
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :messages

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, length: { minimum: 50 }
  validates :summary, length: { maximum: 500 }
  validates :status, length: { maximum: 100 }
end
