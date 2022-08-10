class AddTransactionRefToTransactionCategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :transaction_categories, :transaction, null: false, foreign_key: true
  end
end
