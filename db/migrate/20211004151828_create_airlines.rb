class CreateAirlines < ActiveRecord::Migration[6.1]
  def change
    create_table :airlines do |t|
      t.string :airline_name
      t.text :description
      t.string :headquarters
      t.text :bag_information
      t.text :founded
      t.text :logo
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
