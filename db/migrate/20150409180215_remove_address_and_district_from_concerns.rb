class RemoveAddressAndDistrictFromConcerns < ActiveRecord::Migration
  def change
    remove_column :concerns, :address
    remove_column :concerns, :district
  end
end
