class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :tradings, dependent: :destroy
  has_many :categories, dependent: :destroy

  validates :name, presence: true, length: { in: 3..25 }
end
