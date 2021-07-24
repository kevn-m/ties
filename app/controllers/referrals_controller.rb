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
