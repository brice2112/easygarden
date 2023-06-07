class CreateSynergies < ActiveRecord::Migration[7.0]
  def change
    create_table :synergies do |t|
      t.integer :first_vegetable_id
      t.integer :second_vegetable_id
      t.timestamps
    end
  end
end
