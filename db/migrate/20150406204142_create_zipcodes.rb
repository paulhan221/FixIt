class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|
      t.belongs_to :concern
      t.timestamps null: false
    end
  end
end
