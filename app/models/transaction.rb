class Transaction < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :transaction_categories, dependent: :destroy

  validates :name, presence: true, length: { in: 3..25 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
