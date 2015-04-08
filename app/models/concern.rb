class Concern < ActiveRecord::Base
  belongs_to :creator, :class_name => "User"
  belongs_to :state
  has_many :votes
  has_many :voters, through: :votes, source: :user
  has_many :comments, dependent: :destroy

  def upvote_count
    self.votes.where(:upvote => true).count
    #make into sql
  end

  def downvote_count
    self.votes.where(:upvote => false).count
    #make into sql
  end

end
