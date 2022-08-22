class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.text :title
      t.text :description
      t.text :type
      t.text :tail_shape
      t.text :fins_type
      t.text :location
      t.float :width
      t.float :length
      t.float :thickness
      t.float :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
