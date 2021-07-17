class Interest < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :user_interests
end
