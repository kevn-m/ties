class TiesController < ApplicationController
  def chat_list
  end

  def index
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

  def show
    @tie = Tie.find(params[:id])
    @message = Message.new
  end
end
