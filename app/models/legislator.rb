class Legislator < ActiveRecord::Base
  belongs_to :state

  # attr_reader :state_name

  # def initialize(state_name)
  #   @state_name = state_name
  # end

  def state_name
    State.find(self.state_id).name
  end

  # def get_results
  #   @results ||= HTTParty.get("http://congress.api.sunlightfoundation.com/legislators?title=Sen&state_name=#{URI.encode(self.state_name)}&apikey=019ce60aedb142ce9962d349c3b51e60")
  # end

  #   senator_attributes = ["first_name", "last_name", "phone", "oc_email", "facebook_id", "twitter_id", "website", "contact_form", "votesmart_id", "youtube_id", "party", "office"]

  # senator_attributes.each do |attribute|
  #   define_method "senator1_#{attribute}" do
  #     self.get_results["results"].first[attribute]
  #   end

  #   define_method "senator2_#{attribute}" do
  #     self.get_results["results"].last[attribute]
  #   end
  # end
end