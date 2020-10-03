class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :latitude
      t.integer :longitude
      t.text :description
      t.string :website
      t.integer :category_id

      t.timestamps
    end
  end
end
