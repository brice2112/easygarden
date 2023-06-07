class AddMeanTemperatureToGardens < ActiveRecord::Migration[7.0]
  def change
    add_column :gardens, :mean_temperature, :float
  end
end
