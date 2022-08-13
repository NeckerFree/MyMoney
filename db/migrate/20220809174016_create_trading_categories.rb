class CreateTradingCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :trading_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :trading, null: false, foreign_key: true
      t.timestamps
    end
  end
end
