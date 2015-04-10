class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :oc_email
      t.string :facebook_id
      t.string :twitter_id
      t.string :website
      t.string :contact_form
      t.string :votesmart_id
      t.string :youtube_id
      t.string :party
      t.string :office
      t.belongs_to :state
    end
  end
end
