class StatesController < ApplicationController

  def index
  end

  def show
    @state = State.find(params[:state][:state_id])
  end

end
