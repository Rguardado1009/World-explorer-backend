class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :from
      t.string :to
      t.string :description
      t.text :flight_number
      t.references :user, null: false, foreign_key: true
      t.references :airline, null: false, foreign_key: true
      t.timestamps
    end
  end
end
