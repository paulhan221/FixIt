class WelcomeController < ApplicationController
  def index
    @concerns = Concern.paginate(page: params[:page], per_page: 10)
                       .order('title ASC')
  end
end
