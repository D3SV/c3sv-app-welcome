require 'spec_helper'

describe ReferralSourceCollection do
  describe '.select_options' do
    subject { described_class.select_options }

    let(:options) do
      [
        ["Friend", "friend", {"data-id"=>"friend"}],
        ["Yelp", "yelp", {"data-id"=>"yelp"}],
        ["Facebook", "facebook", {"data-id"=>"facebook"}],
        ["Billboard", "billboard", {"data-id"=>"billboard"}],
        ["Mailer", "mailer", {"data-id"=>"mailer"}],
        ["Google search", "google_search", {"data-id"=>"google_search"}],
        ["Google ads", "google_ads", {"data-id"=>"google_ads"}],
        ["Other:", "other", {"data-id"=>"other"}]
      ]
    end

    it { should eq(options) }
  end
end
