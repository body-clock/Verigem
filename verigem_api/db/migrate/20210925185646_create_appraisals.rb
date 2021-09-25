class CreateAppraisals < ActiveRecord::Migration[6.1]
  def change
    create_table :appraisals do |t|
      t.string :brand
      t.string :item_type
      t.string :client_notes
      t.string :appraiser_notes
      t.string :status
      t.string :decision

      t.timestamps
    end
  end
end
