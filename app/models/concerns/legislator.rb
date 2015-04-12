class Legislator
  belongs_to :state
  # attr_reader :state_name

  # def initialize(state_name)
  #   @state_name = state_name
  #   get_results
  # end

  # def get_results
  #   @results ||= HTTParty.get("http://congress.api.sunlightfoundation.com/legislators?title=Sen&state_name=#{URI.encode(state_name)}&apikey=019ce60aedb142ce9962d349c3b51e60")
  # # end

  # def state_name
  #   State.find(self.state_id).name 
  # end
  ###### Senator 1 ######

  # senator_attributes = ["first_name", "last_name", "phone", "oc_email", "facebook_id", "twitter_id", "website", "contact_form", "votesmart_id", "youtube_id", "party", "office"]

  # senator_attributes.each do |attribute|
  #   define_method "senator1_#{attribute}" do
  #     @results["results"].first[attribute]
  #   end

  #   define_method "senator2_#{attribute}" do
  #     @results["results"].last[attribute]
  #   end
  # end

  # def senator1_first_name
  #   @results["results"].first["first_name"]
  # end

  # def senator1_last_name
  #   @results["results"].first["last_name"]
  # end

  # def senator1_phone
  #   @results["results"].first["phone"]
  # end

  # def senator1_email
  #   @results["results"].first["oc_email"]
  # end

  # def senator1_facebook
  #   @results["results"].first["facebook_id"]
  # end

  # def senator1_twitter
  #   @results["results"].first["twitter_id"]
  # end

  # def senator1_website
  #   @results["results"].first["website"]
  # end

  # def senator1_contact
  #   @results["results"].first["contact_form"]
  # end

  # def senator1_votesmart
  #   @results["results"].first["votesmart_id"]
  # end

  # def senator1_youtube
  #   @results["results"].first["youtube_id"]
  # end

  # def senator1_party
  #   @results["results"].first["party"]
  # end

  # def senator1_office
  #   @results["results"].first["office"]
  # end


  # ###### Senator 2 ######

  # def senator2_first_name
  #   @results["results"].last["first_name"]
  # end

  # def senator2_last_name
  #   @results["results"].last["last_name"]
  # end

  # def senator2_phone
  #   @results["results"].last["phone"]
  # end

  # def senator2_email
  #   @results["results"].last["oc_email"]
  # end

  # def senator2_facebook
  #   @results["results"].last["facebook_id"]
  # end

  # def senator2_twitter
  #   @results["results"].last["twitter_id"]
  # end

  # def senator2_website
  #   @results["results"].last["website"]
  # end

  # def senator2_contact
  #   @results["results"].last["contact_form"]
  # end

  # def senator2_votesmart
  #   @results["results"].last["votesmart_id"]
  # end

  # def senator2_youtube
  #   @results["results"].last["youtube_id"]
  # end

  # def senator2_party
  #   @results["results"].last["party"]
  # end

  # def senator2_office
  #   @results["results"].last["office"]
  # end
end











































