class RequestForm < ApplicationRecord
  has_many :carts
  accepts_nested_attributes_for :carts
end
