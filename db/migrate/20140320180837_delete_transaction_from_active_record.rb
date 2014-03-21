class DeleteTransactionFromActiveRecord < ActiveRecord::Migration
  def change
    remove_column :orders, :transaction, :string
  end
end
