class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id
  has_many :entity_groups
end
