class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :title
      t.text :description
      t.string :price
      t.string :category
      t.string :image
      t.string :address
      t.integer :zip_code
      t.string :city
      t.string :borough
      t.string :url

      t.timestamps
    end
  end
end
