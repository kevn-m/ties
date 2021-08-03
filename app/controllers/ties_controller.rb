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
      @tie = tie.id
      @lastmessage = Message.where(tie_id: tie.id).last
      @users.push([User.find(@user_id), @lastmessage, @tie])
    end
  end

  def index
    @ties = Tie.where('user1_id= :user OR user2_id= :user', { user: current_user })
    # Looping through the ties for current_user and returning the other user for each tie.
    @users = []
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
  end

  def show
    @tie = Tie.find(params[:id])
    @message = Message.new
  end

end
