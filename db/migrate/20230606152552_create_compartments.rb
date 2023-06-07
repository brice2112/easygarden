class CreateCompartments < ActiveRecord::Migration[7.0]
  def change
    create_table :compartments do |t|
      t.float :width
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
