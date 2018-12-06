class Chemical < ApplicationRecord
  enum status: { draft: 0, published: 1}
  scope :by_chemical, -> { order('chemical DESC')}
end
