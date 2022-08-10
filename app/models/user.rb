class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :transactions, foreign_key: 'author_id'
  has_many :category
end
