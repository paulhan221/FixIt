class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(state_id)

    @first_senator = Legislator.new(@state.name)
    @second_senator = Legislator.new(@state.name)

    # @senator1_first_name = first_senator.senator1_first_name
    # @senator1_last_name = first_senator.senator1_last_name
    # @senator1_phone = first_senator.senator1_phone
    # @senator1_email = first_senator.senator1_oc_email
    # @senator1_facebook = first_senator.senator1_facebook_id
    # @senator1_twitter = first_senator.senator1_twitter_id
    # @senator1_website = first_senator.senator1_website
    # @senator1_contact = first_senator.senator1_contact_form
    # @senator1_votesmart = first_senator.senator1_votesmart_id
    # @senator1_youtube = first_senator.senator1_youtube_id
    # @senator1_party = first_senator.senator1_party
    # @senator1_office = first_senator.senator1_office

    # @senator2_first_name = second_senator.senator2_first_name
    # @senator2_last_name = second_senator.senator2_last_name
    # @senator2_phone = second_senator.senator2_phone
    # @senator2_email = second_senator.senator2_oc_email
    # @senator2_facebook = second_senator.senator2_facebook_id
    # @senator2_twitter = second_senator.senator2_twitter_id
    # @senator2_website = second_senator.senator2_website
    # @senator2_contact = second_senator.senator2_contact_form
    # @senator2_votesmart = second_senator.senator2_votesmart_id
    # @senator2_youtube = second_senator.senator2_youtube_id
    # @senator2_party = second_senator.senator2_party
    # @senator2_office = second_senator.senator2_office

    @article_results = HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{URI.encode(@state.name)}+state&sort=newest&api-key=89e284f8eda6570a89f89d232d8aa6d6%3A0%3A71812658")
    # @article1 = Article.new(@state.name)
    @articles = []
    @article_results["response"]["docs"][0..4].each do |article|
      @articles << Article.new(@state.name, article["headline"]["main"], article["web_url"], article["snippet"], article["abstract"], article["pub_date"])
    end
  end
  private
  def state_id
    params[:state] ? params[:state][:state_id] : params[:format]
  end
end
