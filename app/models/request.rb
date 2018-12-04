class Request < ApplicationRecord
  has_many :carts
  accepts_nested_attributes_for :carts
  scope :submitted_by, ->(user) { where(user_id: user.id)}
end
