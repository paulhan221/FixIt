class Concern < ActiveRecord::Base
  belongs_to :creator, :class_name => "User"
  belongs_to :state
  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes, source: :user
  has_many :comments, dependent: :destroy
end
