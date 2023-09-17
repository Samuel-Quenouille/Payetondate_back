class AddFirstNameAndAgeToTestimonies < ActiveRecord::Migration[7.0]
  def change
    add_column :testimonies, :age, :integer
    add_column :testimonies, :first_name, :string
  end
end
