class Request < ApplicationRecord
  enum status: {submitted: 1, approved: 2, rejected: 3}
  has_many :carts
  belongs_to :user
  accepts_nested_attributes_for :carts
  scope :submitted_by, ->(user) { where(user_id: user.id)}
  scope :pending_non_emergency, -> { where(emergency: '') & where(status: 1)}
  scope :pending_emergency, -> { where(arel_table[:emergency].not_eq('')) & where(status: 1)}
  scope :history, -> { where(arel_table[:status].not_eq(1))}

  scope :individ_pending_non_emergency, ->(user) { where(emergency: '') & where(status: 1) & where(user_id: user.id)}
  scope :individ_pending_emergency, ->(user) { where(arel_table[:emergency].not_eq('')) & where(status: 1) & where(user_id: user.id)}
  scope :individ_history, ->(user) { where(arel_table[:status].not_eq(1)) & where(user_id: user.id)}

  scope :date_span, ->(startd, endd) { where("date >= ?", startd) & where("date <= ?", endd)}

end
