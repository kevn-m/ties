class ReferralsController < ApplicationController
  def referral_request
    user_id = params[:id]
    @referral = Referral.find_by to_user_id: current_user, recommended_user_id: user_id
    @referral.update(reject: false, requested: true)
    redirect_to referrals_path
  end

  def accept
    # Tie.create(user1_id: current_user.id, user2_id: params[:id])
  end

  def reject
    user_id = params[:id]
    @referral = Referral.find_by to_user_id: current_user, recommended_user_id: user_id
    @referral.update(reject: true)
    redirect_to referrals_path
  end

  def index

    # getting all referrals for the to_user where reject = nil and where requested = nil
    @to_referrals = current_user.to_referrals.where(reject: nil).where(requested: nil)

    # mapping users recommended users to an array
    @referrals = @to_referrals.map do |referral|
      User.find_by id: referral.recommended_user_id

    # Get all referrals where the recommended_user_id is equal to current user AND requested is nil

    end

  end

  def create
  end
end
