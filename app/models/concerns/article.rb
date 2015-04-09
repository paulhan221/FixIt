class Article
  attr_reader :state_name

  def initialize(state_name)
    @state_name = state_name
    get_results
  end


  def get_results
    @results ||= HTTParty.get()
  end


end