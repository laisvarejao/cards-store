class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :buyer_email
      t.string :shipping_address
      t.decimal :total, precision: 8, scale: 2
      t.references :order_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
