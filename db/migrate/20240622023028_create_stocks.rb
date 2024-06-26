class CreateStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :stocks do |t|
      t.integer :product_id
      t.string :size
      t.integer :amount

      t.timestamps
    end
  end
end
