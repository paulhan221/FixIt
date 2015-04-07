class FixUserForVotes < ActiveRecord::Migration
  def change
    rename_column :votes, :user_id, :voter_id
  end
end