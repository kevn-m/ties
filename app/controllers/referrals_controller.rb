class ReferralsController < ApplicationController
  def referral_request
  end

  def accept
  end

  def reject
  end

  def index

    # getting all referrals for the to_user
    @to_referrals = current_user.to_referrals

    # mapping them into an array if the are not rejected and not seen
    @referrals = @to_referrals.map do |referral|
      User.find_by id: referral.recommended_user_id
    end

    # Map all current friends to an array

    #

  end

  def create
  end
end
