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

  def new
    recom_user = params[:selected_user]
    @recommended_user = User.find(recom_user)
    @referral = Referral.new

    # Getting all the ties, then removing the recommended_user from the list
    @ties = Tie.where('user1_id= :user OR user2_id= :user', { user: current_user })
    @ties = @ties.where.not('user1_id= :user OR user2_id= :user', { user: @recommended_user })
    # Looping through the ties for current_user and returning the other user for each tie.
    @users = []
    @ties.each do |tie|
      if current_user.id == tie.user1_id
        @user_id = tie.user2_id
      elsif current_user.id == tie.user2_id
        @user_id = tie.user1_id
      end
      @users.push(User.find(@user_id))
    end
  end

  def create
  end
end
