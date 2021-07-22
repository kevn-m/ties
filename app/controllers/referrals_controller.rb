class ReferralsController < ApplicationController
  def referral_request
  end

  def accept
    user_id = params[:id]
    @referral = Referral.find_by to_user_id: current_user, recommended_user_id: user_id
    @referral.update(reject: false)
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
