class Legislator
  attr_reader :state_name

  def initialize(state_name)
    @state_name = state_name
    get_results
  end

  def get_results

    @results ||= HTTParty.get("http://congress.api.sunlightfoundation.com/legislators?title=Sen&state_name=#{URI.encode(state_name)}&apikey=019ce60aedb142ce9962d349c3b51e60")
  end

  def first_name
    @results["results"].first["first_name"]
  end
end