class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.references :customer, foreign_key: true
      t.float :total
      t.integer :payment
      t.string :note

      t.timestamps
    end
  end
end
