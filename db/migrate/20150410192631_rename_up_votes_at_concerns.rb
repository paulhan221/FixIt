class RenameUpVotesAtConcerns < ActiveRecord::Migration
  def change
    rename_column :concerns, :up_votes, :upvotes
    rename_column :concerns, :down_votes, :downvotes
  end
end
