class ReferralsController < ApplicationController
  def referral_request
  end

  def accept
  end

  def reject
  end

  def index
    @to_referrals = current_user.to_referrals
    @referrals = @to_referrals.map do |referral|
      User.find_by id: referral.recommended_user_id
    end
  end

  def create
  end
end
