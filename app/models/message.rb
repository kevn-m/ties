class Message < ApplicationRecord
  belongs_to :user
  belongs_to :tie

  validates :content, presence: true
end
