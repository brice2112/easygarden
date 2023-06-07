class CreateVegetables < ActiveRecord::Migration[7.0]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.string :variety
      t.string :family
      t.float :min_temp
      t.float :max_temp
      t.float :atmospheric_humidity
      t.float :minimum_precipitation
      t.float :maximum_precipitation

      t.timestamps
    end
  end
end
