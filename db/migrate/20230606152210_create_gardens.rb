class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :location
      t.float :length
      t.float :width
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
