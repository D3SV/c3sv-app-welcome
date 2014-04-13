class UsersController < ApplicationController
  def new
    @user = User.new
    @referral_sources = ReferralSourceCollection.select_options
    @reasons_for_visit = ReasonsForVisitCollection.select_options
  end

  def create
    @new_user = NewUser.new(params[:user])

    if @new_user.save
      redirect_to new_user_path
    else
      render :new
    end
  end
end
