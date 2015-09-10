class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :address
      t.text :description
      t.date :availability_from
      t.date :availability_to
      t.integer :sqft
      t.integer :price

      t.timestamps null: false
    end
  end
end
