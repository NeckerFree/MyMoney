class Trading < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :trading_categories, dependent: :destroy
  has_many :categories, through: :trading_categories, dependent: :destroy
  validates :name, presence: true,length: { in: 3..100 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
