class AddColumnsToVegetables < ActiveRecord::Migration[7.0]
  def change
    add_column :vegetables, :semidate, :string
    add_column :vegetables, :recoltedate, :string
    add_column :vegetables, :espaceplant, :float
    add_column :vegetables, :prix_unitaire, :float
  end
end
