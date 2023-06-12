class AddDescriptionToVegetables < ActiveRecord::Migration[7.0]
  def change
    add_column :vegetables, :description, :string
  end
end
