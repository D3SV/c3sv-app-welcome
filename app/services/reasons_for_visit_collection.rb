class ReasonsForVisitCollection
  def self.select_options
    reasons.map do |reason|
      [reason, reason]
    end
  end

  private

  def self.reasons
    [
      'Looking for a home church, please plug me in.',
      'Still church shopping, but keep me informed.',
      'Just visiting friends & family, thanks!'
    ]
  end
end
