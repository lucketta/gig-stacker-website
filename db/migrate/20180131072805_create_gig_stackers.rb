class CreateGigStackers < ActiveRecord::Migration[5.1]
  def change
    create_table :gig_stackers do |t|

      t.timestamps
    end
  end
end
