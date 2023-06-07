class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :location
      t.string :length
      t.string :width
      t.string :user_id

      t.timestamps
    end
  end
end
