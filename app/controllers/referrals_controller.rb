class ReferralsController < ApplicationController
  def referral_request
  end

  def accept
  end

  def reject
  end

  def index

    # getting all referrals for the to_user where reject = nil
    @to_referrals = current_user.to_referrals.where(reject: nil)

    # mapping users recommended users to an array
    @referrals = @to_referrals.map do |referral|
      User.find_by id: referral.recommended_user_id
    end

  end

  def create
  end
end
