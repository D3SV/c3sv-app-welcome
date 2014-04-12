class UsersController < ApplicationController
  def new
    @user = User.new
    @referral_sources = referral_sources
    @reasons_for_visit = reasons_for_visit
  end

  def create
    @user = new_user

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  private

  def referral_sources
    %w{ friend yelp facebook billboard mailer google_search google_ads
      other }.map do |source|

      name = if source == 'other'
        'Other:'
      else
        source.humanize
      end

      html_attributes = { 'data-id' => source }

      [name, source, html_attributes]
    end
  end

  def reasons_for_visit
    [
      'Looking for a home church, please plug me in.',
      'Still church shopping, but keep me informed.',
      'Just visiting friends & family, thanks!'
    ].map { |reason| [reason, reason] }
  end

  def new_user
    user = User.new
    user.first_name = params[:user][:first_name]
    user.last_name = params[:user][:last_name]
    user.email = params[:user][:email]
    user.phone = params[:user][:phone]
    user.referrer_name = params[:user][:referrer_name]
    user.reason_for_visit = params[:user][:reason_for_visit]
    user.allow_for_social_connect = params[:user][:allow_for_social_connect]

    user.referral_source = if params[:user][:other].present?
      params[:user][:other]
    else
      params[:user][:referral_source]
    end

    user
  end
end
