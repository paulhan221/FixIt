class RenameColumnForConcerns < ActiveRecord::Migration
  def change
    rename_column :concerns, :zipcode_id, :state_id
  end
end
