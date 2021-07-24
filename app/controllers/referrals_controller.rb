class ReferralsController < ApplicationController
  def referral_request
    user_id = params[:id]
    @referral = Referral.find_by to_user_id: current_user, recommended_user_id: user_id
    @referral.update(reject: false, requested: true)
    redirect_to referrals_path
  end

  def accept
    user_id = params[:id]
    @referral = Referral.find_by recommended_user_id: current_user, to_user_id: user_id
    Tie.create(user1_id: current_user.id, user2_id: params[:id])
    redirect_to referrals_path
  end

  def reject
    user_id = params[:id]
    @referral = Referral.find_by to_user_id: current_user, recommended_user_id: user_id
    @referral.update(reject: true)
    redirect_to referrals_path
  end

  def index
    # getting all referrals that the current_user has been recommended (to_user)
    @to_referrals = current_user.to_referrals.where(reject: nil).where(requested: nil)

    # mapping users recommended users to an array
    @referrals = @to_referrals.map do |referral|
      User.find_by id: referral.recommended_user_id
    end

    # Get all referrals where the current user has been requested (recommended_user)
    @requested_referral = current_user.recommended.where(reject: nil).where(requested: true)

    # Mapping all users who have requested to connect to the current user
    @requested = @requested_referral.map do |referral|
    User.find_by id: referral.to_user_id
    end
  end

  def create
  end
end
