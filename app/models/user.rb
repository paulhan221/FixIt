class User < ActiveRecord::Base
  has_many :created_concerns, foreign_key: :creator_id, :class_name => "Concern"
  has_many :votes, foreign_key: :voter_id
  has_many :voted_concerns, through: :votes, source: :concern
  has_many :comments

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

end


