class Concern < ActiveRecord::Base
  belongs_to :creator, :class_name => "User"
  belongs_to :state
  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes, source: :user
  has_many :comments, dependent: :destroy

  def upvote_count
    self.votes.where(:upvote => true).count
  end

  def downvote_count
    self.votes.where(:upvote => false).count
  end

  def total_votes
    upvote_count + downvote_count
  end

  def votes_sum
    upvote_count - downvote_count
  end
end
