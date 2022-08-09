class User < ApplicationRecord
  has_many :entity, foreign_key: 'author_id'
  has_many :group
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
