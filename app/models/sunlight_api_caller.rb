class SunlightApiCaller

  ATTRS = ["first_name", "last_name", "phone", "oc_email", "facebook_id", "twitter_id", "website", "contact_form", "votesmart_id", "youtube_id", "party", "office"]
  
  def self.update_senators
    Legislator.destroy_all

    State.all.each do |state|
      url = "http://congress.api.sunlightfoundation.com/legislators?title=Sen&state_name=#{URI.encode(state.name)}&apikey=#{ENV["SUNLIGHT_API_KEY"]}"
      json = JSON.load(open(url))

      json["results"].each do |senator_json|
        senator = Legislator.new(state_id: state.id)
        
        ATTRS.each do |attribute|
          senator.send("#{attribute}=", senator_json[attribute])
        end
        senator.save 
      end
    end
  end
end