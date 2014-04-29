require 'spec_helper'

describe User do
  describe 'attributes' do
    it { should respond_to :first_name }
    it { should respond_to :last_name }
    it { should respond_to :email }
    it { should respond_to :phone }
    it { should respond_to :referral_source }
    it { should respond_to :referrer_name }
    it { should respond_to :reason_for_visit }
    it { should respond_to :allow_for_social_connect }
    it { should respond_to :other }
  end
end
