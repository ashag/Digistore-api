class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.string :customerName
      t.string :email
      t.integer :total
      t.string :status
      t.string :cc_info
      t.string :cc_cvv
      t.string :cc_exp
      t.string :zip_code
      t.string :transaction

      t.timestamps
    end
  end
end
