class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :update_interests]

  def show

  end

  def edit_interests
    if user_signed_in?
      @user = User.find(current_user.id)
    else
      redirect_to root_path, notice: "Sorry, you must login first."
    end
  end

  def update_interests
    if user_signed_in?
      if @user.update!(user_params)
        # redirect_to edit_user_registration_path, notice: "Your interest is updated sucessfully !"
        flash.now[:alert] = "Interests updated"
      else
        flash.now[:alert] = @user.errors.full_messages.first
        # render :edit_interests
      end

    else
      redirect_to root_path, notice: "Sorry, you must login first."
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :bio, :summary, photos: [], interest_ids: [])
  end

  def find_user
    @user = User.find(params[:id])
  end
end
