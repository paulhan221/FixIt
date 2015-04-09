class SearchesController < ApplicationController
  def index
    @results = Search.for(params[:keyword])
    @results = @results.sort_by(&:total_votes).reverse

  end
end
