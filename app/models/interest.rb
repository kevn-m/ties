class Interest < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :user_interests
  has_and_belongs_to_many :users
  has_one_attached :photo
end
