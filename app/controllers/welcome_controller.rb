class WelcomeController < ApplicationController
  def index
    @concerns = Concern.all
  end
end
