class User < ActiveRecord::Base
  has_many :created_concerns, foreign_key: :creator_id, :class_name => "Concern"
  has_many :votes, foreign_key: :voter_id
  has_many :voted_concerns, through: :votes, source: :concern
end


