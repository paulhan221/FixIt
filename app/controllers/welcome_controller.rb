class WelcomeController < ApplicationController
  def index
    @concerns = Concern.all
    @concerns = @concerns.sort_by { |c| c.total_votes }.reverse
  end
end
