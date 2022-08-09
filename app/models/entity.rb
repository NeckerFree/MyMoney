class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :entity_group
end
