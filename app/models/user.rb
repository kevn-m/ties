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

  validates :username, presence: false, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: false
  validates :last_name, presence: false
  validates :bio, presence: false, length: { minimum: 30 }
  validates :summary, presence: false, length: { maximum: 500 }
  validates :status,  presence: false, length: { maximum: 100 }

  has_many_attached :photos
end
