class Category < ApplicationRecord
  belongs_to :user
  has_many :transaction_categories
end
