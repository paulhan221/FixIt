class CreateConcerns < ActiveRecord::Migration
  def change
    create_table :concerns do |t|
      t.string :description
      t.timestamps null: false
    end
  end
end
