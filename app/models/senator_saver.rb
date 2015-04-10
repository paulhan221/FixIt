
class SenatorSaver


  def self.save_senators
    State.all.each do |state|
      first_legislator = Legislator.new(state_id: state.id)
      second_legislator = Legislator.new(state_id: state.id)
      results = HTTParty.get("http://congress.api.sunlightfoundation.com/legislators?title=Sen&state_name=#{URI.encode(state.name)}&apikey=019ce60aedb142ce9962d349c3b51e60")
        senator_attributes = ["first_name", "last_name", "phone", "oc_email", "facebook_id", "twitter_id", "website", "contact_form", "votesmart_id", "youtube_id", "party", "office"]
      senator_attributes.each do |attribute|
        first_legislator.send("#{attribute}=".to_sym, results["results"].first[attribute])
        second_legislator.send("#{attribute}=".to_sym, results["results"].last[attribute])
      end
      first_legislator.save 
      second_legislator.save
    end
  end
end