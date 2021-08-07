class Referral < ApplicationRecord
  # belongs_to :user
  belongs_to :referrer_user, class_name: 'User', foreign_key: 'referrer_user_id'
  belongs_to :recommended_user, class_name: 'User', foreign_key: 'recommended_user_id'
  belongs_to :to_user, class_name: 'User', foreign_key: 'to_user_id'
end
