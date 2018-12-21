require "administrate/base_dashboard"

class AdminUserDashboard < Administrate::BaseDashboard

  ATTRIBUTE_TYPES = {
    id: Field::Number,
    email: Field::String,
    password: Field::String,
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
    :remember_created_at,
    :first_name,
    :last_name,
    :created_at,
    :updated_at,
  ].freeze

  FORM_ATTRIBUTES = [
    :email,
    :password,
    :remember_created_at,
    :first_name,
    :last_name,
  ].freeze
end
