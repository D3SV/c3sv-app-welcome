require 'spec_helper'

describe NewUser do
  describe '#save' do
    subject { described_class.new(params).save }

    let(:params) do
      {
        first_name: 'foo',
        last_name: 'bar',
        email: 'foo@bar.com',
        phone: 11111111111,
        referral_source: 'baz',
        referrer_name: 'foobar',
        reason_for_visit: 'foobarbaz',
        allow_for_social_connect: true
      }
    end

    it 'should create new user' do
      expect{subject}.to change{User.count}.by(1)

      user = User.last

      expect(user.first_name).to eq('foo')
      expect(user.last_name).to eq('bar')
      expect(user.email).to eq('foo@bar.com')
      expect(user.phone).to eq(11111111111)
      expect(user.referral_source).to eq('baz')
      expect(user.referrer_name).to eq('foobar')
      expect(user.reason_for_visit).to eq('foobarbaz')
      expect(user.allow_for_social_connect).to eq(true)
    end

    context 'params[:other] is blank' do
      before do
        params[:other] = ''
        subject
      end

      let(:user) { User.last }

      it 'should assign params[:referral_source]' do
        expect(user.referral_source).to eq('baz')
      end
    end

    context 'params[:other] is not blank' do
      before do
        params[:other] = 'a'
        subject
      end

      let(:user) { User.last }

      it 'should assign params[:other]' do
        expect(user.referral_source).to eq('a')
      end
    end
  end
end
