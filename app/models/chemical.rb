class Chemical < ApplicationRecord
  enum status: { draft: 0, published: 1}
end
