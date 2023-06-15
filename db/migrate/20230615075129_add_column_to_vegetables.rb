class AddColumnToVegetables < ActiveRecord::Migration[7.0]
  def change
    add_column :vegetables, :semitype, :string
  end
end
