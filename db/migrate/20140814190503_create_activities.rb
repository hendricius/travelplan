class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :trip, index: true
      t.references :participant, index: true
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
