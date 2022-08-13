class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :trading_categories, dependent: :destroy
  has_many :tradings, through: :trading_categories, dependent: :destroy
  validates :name, presence: true, length: { in: 3..100 }
  validates :icon, presence: true, length: { in: 5..300 }

  def total_tradings
    tradings.sum(:amount)
  end
end
