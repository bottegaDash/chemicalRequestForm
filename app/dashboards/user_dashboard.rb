require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    email: Field::String,
    password: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :id,
    :email,
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :email,
    :password,
    :reset_password_sent_at,
    :remember_created_at,
    :first_name,
    :last_name,
    :created_at,
    :updated_at,
  ].freeze

  FORM_ATTRIBUTES = [
    :email,
    :password,
    :reset_password_sent_at,
    :remember_created_at,
    :first_name,
    :last_name,
  ].freeze
end
