class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # Show a list of people who are recommended to the user
    @recommended_users = Referral.where(to_user_id: current_user)
  end
end
