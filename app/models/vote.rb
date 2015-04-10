class Vote < ActiveRecord::Base
  belongs_to :voter, class_name: :user
  belongs_to :concern
  before_save :increment_concern_vote

  def increment_concern_vote
    c = Concern.find(self.concern_id)
    if self.upvote
      c.up_votes += 1
      c.result += 1
    else
      c.down_votes += 1
      c.result -= 1
    end
    c.total += 1
    c.save
  end
end
