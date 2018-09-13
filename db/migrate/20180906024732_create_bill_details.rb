class CreateBillDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :bill_details do |t|
      t.references :bill, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.float :price
      
      t.timestamps
    end
  end
end
