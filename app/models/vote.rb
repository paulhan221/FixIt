class Vote < ActiveRecord::Base
  belongs_to :voter, class_name: :user
  belongs_to :concern

end
