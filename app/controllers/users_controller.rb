class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def show

  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :bio, :summary, photos: [])
  end

  def find_user
    @user = User.find(params[:id])
  end
end
