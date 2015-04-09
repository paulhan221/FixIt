class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])

    legislator = Legislator.new(@state.name)

    @legistor_first_name = legislator.first_name
  end

end
