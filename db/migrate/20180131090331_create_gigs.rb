class CreateGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :gigs do |t|
      t.string :name
      t.string :industry
      t.string :url
      t.string :photo_url

      t.timestamps
    end
  end
end
