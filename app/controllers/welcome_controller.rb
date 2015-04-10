class WelcomeController < ApplicationController
  def index
    @concerns = Concern.paginate(page: params[:page], per_page: 10)
    respond_to do |format|
      format.html
      format.json { render json: @locations  }
    end
  end
end
