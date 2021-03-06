class ReferralsController < ApplicationController
  def referral_request
    user_id = params[:id]
    @referral = Referral.find_by to_user_id: current_user, recommended_user_id: user_id
    if @referral.update(requested: true)
      redirect_to referrals_path, notice: "Requested to tie"
    else
      render :index
    end
  end

  def accept
    user_id = params[:id]
    @referral = Referral.find_by recommended_user_id: current_user, to_user_id: user_id
    @referral.update(tied: true)
    if Tie.create(user1_id: current_user.id, user2_id: params[:id])
      redirect_to referrals_path, notice: "Accepted tie"
    else
      render :index
      flash[:notice] = 'Tie already exists'
    end
  end

  def reject
    user_id = params[:id]
    if Referral.find_by to_user_id: current_user, recommended_user_id: user_id
      @referral = Referral.find_by to_user_id: current_user, recommended_user_id: user_id
      if @referral.update(reject: true)
        redirect_to referrals_path, notice: "Rejected"
      else
        render :index
      end
    elsif Referral.find_by to_user_id: user_id, recommended_user_id: current_user
      @referral = Referral.find_by to_user_id: user_id, recommended_user_id: current_user
      if @referral.update(reject: true)
        redirect_to referrals_path, notice: "Rejected"
      else
        render :index
      end
    end
  end

  def index
    # getting all referrals that the current_user has been recommended (to_user)
    @to_referrals = current_user.to_referrals.where(tied: nil).where(reject: nil).where(requested: nil)

    # Get all referrals where the current user has been requested (recommended_user)
    @requested_referrals = current_user.recommended.where(tied: nil).where(reject: nil).where(requested: true)

    # Looking for all Ties where the current user is one of the existing Ties
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
    @users = @users.uniq
  end

  def new
    to_user = params[:selected_user] || params[:search_by_interest][:selected_user]
    @to_user = User.find(to_user)
    @referral = Referral.new

    # Getting all the ties, then removing the to_user from the list
    @ties = Tie.where('user1_id= :user OR user2_id= :user', { user: current_user })
    @ties = @ties.where.not('user1_id= :user OR user2_id= :user', { user: @to_user })
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
      if (Referral.where('to_user_id= :to_user AND referrer_user_id= :ref_user AND recommended_user_id= :user', { to_user: @to_user, ref_user: current_user, user: user }).size > 0 )
        @existing_referral_users.push(user)
      elsif (Referral.where('recommended_user_id= :to_user AND referrer_user_id= :ref_user AND to_user_id= :user', { to_user: @to_user, ref_user: current_user, user: user }).size > 0 )
        @existing_referral_users.push(user)
      elsif (Tie.where('user1_id= :to_user AND user2_id= :user OR user1_id= :user AND user2_id= :to_user ', { to_user: @to_user, user: user }).size > 0)
        @existing_ties_users.push(user)
      else
        @users.push(user)
      end
    end

    if params[:query].present?
      # First finding all the users that match the search
      @all_matches = User.search_by_interest(params[:query])
      # Then getting an intersection (common entries) of @all_matches and the other arrays
      @users = @users & @all_matches
      @existing_referral_users = @existing_referral_users & @all_matches
      @existing_ties_users = @existing_ties_users & @all_matches
    end
  end

  def create
    to_user = params[:referral][:to_user]
    @to_user = User.find(to_user)
    recom_user = params[:referral][:recommended_user_id]
    @recommended_user = User.find(recom_user)

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
