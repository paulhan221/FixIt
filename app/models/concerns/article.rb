class Article
  attr_reader :state_name, :headline, :web_url, :snippet, :abstract, :pub_date

  def initialize(state_name, headline, web_url, snippet, abstract, pub_date)
    @state_name = state_name
    @headline = headline
    @web_url = web_url
    @snippet = snippet
    @abstract = abstract
    @pub_date = pub_date
  end


  # def self.get_results
  #   @results ||= HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{URI.encode(@state_name)}+state&sort=newest&api-key=89e284f8eda6570a89f89d232d8aa6d6%3A0%3A71812658")
  # end

  # def headline
  #   @results["response"]["docs"].each do |article|
  #     @headline = article["headline"]["main"]
  #     @web_url = article["web_url"]
  #   end
  # end

  # def web_url
  #   @results["response"]["docs"].each do |article|
  #   end
  # end

  # def snippet
  #   @results["response"]["docs"].each do |article|
  #     return article["snippet"]
  #   end
  # end

  # def abstract
  #   @results["response"]["docs"].each do |article|
  #     return article["abstract"]
  #   end
  # end
  # def multimedia
  #   @results["response"]["docs"].each do |article|
  #     return article["multimedia"]
  #   end
  # end

  # def pub_date
  #   @results["response"]["docs"].each do |article|
  #     return article["pub_date"].gsub(/T.+/, "")
  #   end
  # end
end
