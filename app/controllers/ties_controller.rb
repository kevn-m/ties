class TiesController < ApplicationController
  def chat_list
    @ties = Tie.where('user1_id= :user OR user2_id= :user', { user: current_user })
    # Looping through the ties for current_user and returning the other user for each tie.
    @users = []

    @ties.each do |tie|
      if current_user.id == tie.user1_id
        @user_id = tie.user2_id
      elsif current_user.id == tie.user2_id
        @user_id = tie.user1_id
      end
      @lastmessage = Message.where(tie_id: tie.id).last
      @users.push([User.find(@user_id), @lastmessage, tie.id])
    end
  end

  def index
    @ties = Tie.where('user1_id= :user OR user2_id= :user', { user: current_user })
    # Looping through the ties for current_user and returning the other user for each tie.
    @users = []
    @all_matches = []
    @ties.each do |tie|
      if current_user.id == tie.user1_id
        @user_id = tie.user2_id
      elsif current_user.id == tie.user2_id
        @user_id = tie.user1_id
      end
      @users.push(User.find(@user_id))
      # Making sure that we display each user only once
      @users = @users.uniq
    end

    if params[:query].present?
      # First finding all the users that match the search
      @all_matches = User.search_by_interest(params[:query])
      # Then getting an intersection (common entries) of @all_matches and @users
      @users = @users & @all_matches
    else
      @users
    end
  end

  def show
    # creating a new message
    @tie = Tie.find(params[:id])
    @message = Message.new

    # selecting your tie's messages as "seen" when open a chat
    if current_user.id == @tie.user1_id
      @your_tie = User.find(@tie.user2_id)
      @your_tie_messages = Message.where(tie_id: @tie).where(user_id: @tie.user2_id)
    else
      @your_tie = User.find(@tie.user1_id)
      @your_tie_messages = Message.where(tie_id: @tie).where(user_id: @tie.user1_id)
    end
    @your_tie_messages.update_all "seen = true"
  end
end
