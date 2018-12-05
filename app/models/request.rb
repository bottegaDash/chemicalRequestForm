class Request < ApplicationRecord
  enum status: {submitted: 1, approved: 2, rejected: 3}
  has_many :carts
  accepts_nested_attributes_for :carts
  scope :submitted_by, ->(user) { where(user_id: user.id)}
end
