class CreateTestimonies < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonies do |t|
      t.text :description

      t.timestamps
    end
  end
end
