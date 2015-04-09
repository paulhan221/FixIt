class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(state_id)

    first_senator = Legislator.new(@state.name)
    second_senator = Legislator.new(@state.name)

    @senator1_first_name = first_senator.senator1_first_name
    @senator1_last_name = first_senator.senator1_last_name
    @senator1_phone = first_senator.senator1_phone
    @senator1_email = first_senator.senator1_email
    @senator1_facebook = first_senator.senator1_facebook
    @senator1_twitter = first_senator.senator1_twitter
    @senator1_website = first_senator.senator1_website
    @senator1_contact = first_senator.senator1_contact
    @senator1_votesmart = first_senator.senator1_votesmart
    @senator1_youtube = first_senator.senator1_youtube
    @senator1_party = first_senator.senator1_party
    @senator1_office = first_senator.senator1_office

    @senator2_first_name = second_senator.senator2_first_name
    @senator2_last_name = second_senator.senator2_last_name
    @senator2_phone = second_senator.senator2_phone
    @senator2_email = second_senator.senator2_email
    @senator2_facebook = second_senator.senator2_facebook
    @senator2_twitter = second_senator.senator2_twitter
    @senator2_website = second_senator.senator2_website
    @senator2_contact = second_senator.senator2_contact
    @senator2_votesmart = second_senator.senator2_votesmart
    @senator2_youtube = second_senator.senator2_youtube
    @senator2_party = second_senator.senator2_party
    @senator2_office = second_senator.senator2_office
  end

  private
  def state_id
    params[:state] ? params[:state][:state_id] : params[:format]
  end

end

