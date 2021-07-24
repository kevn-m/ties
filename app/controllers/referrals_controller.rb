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
    if Tie.create(user1_id: current_user.id, user2_id: params[:id])
      redirect_to referrals_path
    else
      flash[:notice] = 'Tie already exists'
    end
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

    # Get all referrals where the current user has been requested (recommended_user)
    @requested_referral = current_user.recommended.where(reject: false).where(requested: true)
  end

  def create
  end
end
