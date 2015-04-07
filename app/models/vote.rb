class Vote < ActiveRecord::Base
  belongs_to :voter, class_name: :user
  belongs_to :concern
  validate :unique_vote?

  private
  
  def unique_vote?
    @voter = User.find(self.voter_id)
    unless @voter.can_vote?(self.concern_id)
      errors.add(:unique, "You already voted on this concern.")
    end
  end
end


  # validate :host_cannot_be_same_as_guest, :reservation_must_be_available, :checkin_not_before_checkout, :checkin_not_same_as_checkout

  # def host_cannot_be_same_as_guest
  #   errors.add(:validate_host_id, "naw son") if
  #     self.listing.host == self.guest 
  # end