class State < ActiveRecord::Base
  has_many :concerns
  has_many :legislators
end
