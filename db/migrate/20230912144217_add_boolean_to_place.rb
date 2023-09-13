class AddBooleanToPlace < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :is_validate, :boolean, default: false
  end
end
