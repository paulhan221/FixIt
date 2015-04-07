class CreateConcerns < ActiveRecord::Migration
  def change
    create_table :concerns do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :district
      t.belongs_to :creator 
      t.belongs_to :zipcode
      t.timestamps null: false
    end
  end
end
