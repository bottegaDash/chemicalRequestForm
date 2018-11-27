class Chemreq < ApplicationRecord
  has_many :carts
  accepts_nested_attributes_for :carts, reject_if: :all_blank, allow_destroy: true
end
