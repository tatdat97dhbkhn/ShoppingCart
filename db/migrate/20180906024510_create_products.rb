class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.string :description
      t.string :image
      t.float :price

      t.timestamps
    end
  end
end
