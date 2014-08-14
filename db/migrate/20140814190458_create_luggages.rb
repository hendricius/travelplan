class CreateLuggages < ActiveRecord::Migration
  def change
    create_table :luggages do |t|
      t.string :name
      t.references :trip, index: true
      t.references :participant, index: true
      t.integer :quantity
      t.float :price
      t.text :comment
      t.integer :importance
      t.datetime :taken_care_of
      t.integer :taken_care_of_by_id

      t.timestamps
    end
  end
end
