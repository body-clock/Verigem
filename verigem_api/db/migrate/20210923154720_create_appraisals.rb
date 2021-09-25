class CreateAppraisals < ActiveRecord::Migration[6.1]
  def change
    create_table :appraisals do |t|
      t.string :title
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
