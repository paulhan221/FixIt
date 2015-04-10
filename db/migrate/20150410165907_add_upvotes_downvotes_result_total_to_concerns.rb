class AddUpvotesDownvotesResultTotalToConcerns < ActiveRecord::Migration
  def change
    add_column :concerns, :up_votes, :integer, :default => 0
    add_column :concerns, :down_votes, :integer, :default => 0
    add_column :concerns, :result, :integer, :default => 0
    add_column :concerns, :total, :integer, :default => 0
  end
end
