require 'spec_helper'

describe ReasonsForVisitCollection do
  describe '.select_options' do
    subject { described_class.select_options }

    let(:options) do
      [
        [
          "Looking for a home church, please plug me in.",
          "Looking for a home church, please plug me in."
        ],
        [
          "Still church shopping, but keep me informed.",
          "Still church shopping, but keep me informed."
        ],
        [
          "Just visiting friends & family, thanks!",
          "Just visiting friends & family, thanks!"
        ]
      ]
    end

    it { should eq(options) }
  end
end
