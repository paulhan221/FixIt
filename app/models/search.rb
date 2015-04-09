class Search
  def self.for(keyword)
    Concern.where("title LIKE ?", "%#{keyword}%")
  end
end
