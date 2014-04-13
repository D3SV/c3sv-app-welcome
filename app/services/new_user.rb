class NewUser
  def initialize(attributes = {})
    @attributes = attributes
    @user = User.new
  end

  def save
    assign_normal_attributes

    @user.referral_source = if @attributes[:other].present?
      @attributes[:other]
    else
      @attributes[:referral_source]
    end

    @user.save
  end

  private

  def assign_normal_attributes
    @user.first_name = @attributes[:first_name]
    @user.last_name = @attributes[:last_name]
    @user.email = @attributes[:email]
    @user.phone = @attributes[:phone]
    @user.referrer_name = @attributes[:referrer_name]
    @user.reason_for_visit = @attributes[:reason_for_visit]
    @user.allow_for_social_connect = @attributes[:allow_for_social_connect]
  end
end
