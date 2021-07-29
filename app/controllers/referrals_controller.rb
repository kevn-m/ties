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
    @referral.update(tied: true)
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
    @to_referrals = current_user.to_referrals.where(tied: nil).where(reject: nil).where(requested: nil)

    # Get all referrals where the current user has been requested (recommended_user)
    @requested_referrals = current_user.recommended.where(tied: nil).where(reject: false).where(requested: true)

    @ties = Tie.where('user1_id= :user OR user2_id= :user', {user: current_user})
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

  def new
    recom_user = params[:selected_user]
    @recommended_user = User.find(recom_user)
    @referral = Referral.new

    # Getting all the ties, then removing the recommended_user from the list
    @ties = Tie.where('user1_id= :user OR user2_id= :user', { user: current_user })
    @ties = @ties.where.not('user1_id= :user OR user2_id= :user', { user: @recommended_user })
    # Looping through the ties for current_user and returning the other user for each tie.
    @all_tie_users = []
    @existing_referral_users = []
    @existing_ties_users = []
    @users = []
    @ties.each do |tie|
      if current_user.id == tie.user1_id
        @user_id = tie.user2_id
      elsif current_user.id == tie.user2_id
        @user_id = tie.user1_id
      end
      @all_tie_users.push(User.find(@user_id))
    end
    @all_tie_users = @all_tie_users.uniq

    # Returned tie users are divided in 3 groups.
    # 1. users that were already referred to the selected recommended_user_id; also checking the same users the other way around (selected user was to_user_id)
    # 2. Users that are already ties with the selected recommended_user_id.
    # 3. Remaining users that can be selected to complete referral.
    @all_tie_users.each do |user|
      if (Referral.where('recommended_user_id= :rec_user AND referrer_user_id= :ref_user AND to_user_id= :user', { rec_user: @recommended_user, ref_user: current_user, user: user }).size > 0 )
        @existing_referral_users.push(user)
      elsif (Referral.where('recommended_user_id= :user AND referrer_user_id= :ref_user AND to_user_id= :rec_user', { rec_user: @recommended_user, ref_user: current_user, user: user }).size > 0 )
        @existing_referral_users.push(user)
      elsif (Tie.where('user1_id= :rec_user AND user2_id= :user OR user1_id= :user AND user2_id= :rec_user ', { rec_user: @recommended_user, user: user }).size > 0)
        @existing_ties_users.push(user)
      else
        @users.push(user)
      end
    end
  end

  def create
    recom_user = params[:referral][:recommended_user_id]
    @recommended_user = User.find(recom_user)
    to_user = params[:referral][:to_user_id]
    @to_user = User.find(to_user)

    @referral = Referral.new(referral_params)
    @referral.recommended_user_id = @recommended_user.id
    @referral.to_user_id = @to_user.id
    @referral.referrer_user_id = current_user.id

    if @referral.save
      redirect_to ties_path, notice: "Referral submitted sucessfully!"
    else
      render :new
    end
  end

  private

  def referral_params
    params.require(:referral).permit(:referrer_user_id, :recommended_user_id, :to_user_id, :reason)
  end
end
