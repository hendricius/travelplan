class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.datetime :meetup_at
      t.text :meetup_location

      t.timestamps
    end
  end
end
