class AddBooleanToTestimonies < ActiveRecord::Migration[7.0]
  def change
    add_column :testimonies, :is_validate, :boolean, default: false
  end
end
