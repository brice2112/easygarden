class CreateCompartments < ActiveRecord::Migration[7.0]
  def change
    create_table :compartments do |t|
      t.string :width
      t.string :garden_id

      t.timestamps
    end
  end
end
