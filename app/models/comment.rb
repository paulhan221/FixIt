class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :concern
	validates :content, presence: true
end
