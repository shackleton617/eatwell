class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.datetime :expiration_date
      t.string :company
      t.integer :token_value
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
