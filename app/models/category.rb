class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :transaction_categories, dependent: :destroy

  validates :name, presence: true, length: { in: 3..25 }
  validates :icon, presence: true, length: { in: 3..25 }

end
