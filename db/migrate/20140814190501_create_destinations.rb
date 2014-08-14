class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :description
      t.references :trip, index: true
      t.references :participant, index: true
      t.text :address

      t.timestamps
    end
  end
end
