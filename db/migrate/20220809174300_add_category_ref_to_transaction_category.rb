class AddcategoryRefToTransactioncategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :transaction_categories, :category, null: false, foreign_key: true
  end
end
