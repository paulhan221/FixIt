class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :content
    	t.belongs_to :user
    	t.belongs_to :concern
      t.timestamps null: false
    end
  end
end
