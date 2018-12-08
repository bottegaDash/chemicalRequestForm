class Anouncement < ApplicationRecord
  scope :by_created_at, -> { order('created_at DESC')}
end
