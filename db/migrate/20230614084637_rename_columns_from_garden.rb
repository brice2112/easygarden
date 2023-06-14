class RenameColumnsFromGarden < ActiveRecord::Migration[7.0]
  def change
    rename_column :gardens, :location, :address
  end
end
