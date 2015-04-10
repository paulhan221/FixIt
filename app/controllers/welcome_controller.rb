class WelcomeController < ApplicationController
  def index
    @concerns = Concern.order(params[:sort] + " " + params[:direction])
  end
end
