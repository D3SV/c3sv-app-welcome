class ReferralSourceCollection
  def self.select_options
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
end
