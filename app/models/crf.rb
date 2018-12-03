class Crf < ApplicationRecord
  enum status: { submitted: 0, accepted: 1, rejected:2}
  has_many :carts
end
