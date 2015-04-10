class WelcomeController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @concerns = Concern.order(sort_column + " " + sort_direction)
  end

  private
    def sort_column
      params[:sort] || 'title'
    end

    def sort_direction
      params[:direction] || 'asc'
    end
end
