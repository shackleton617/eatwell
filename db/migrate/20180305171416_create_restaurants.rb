class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.text :description
      t.string :location
      t.string :address
      t.string :phone_number
      t.integer :price_for_two
      t.string :working_hours
      t.boolean :has_community
      t.boolean :has_sourcing
      t.boolean :has_recycling
      t.string :photos

      t.timestamps
    end
  end
end
