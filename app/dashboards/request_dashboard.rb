require "administrate/base_dashboard"

class RequestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    carts: Field::HasMany,
    user: Field::BelongsTo,
    id: Field::Number,
    emergency: Field::String,
    additional_comments: Field::String,
    status: Field::String.with_options(searchable: false),
    date: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    approver: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :carts,
    :user,
    :id,
    :emergency,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :carts,
    :user,
    :id,
    :emergency,
    :additional_comments,
    :status,
    :date,
    :created_at,
    :updated_at,
    :approver,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :carts,
    :user,
    :emergency,
    :additional_comments,
    :status,
    :date,
    :approver,
  ].freeze

  # Overwrite this method to customize how requests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(request)
  #   "Request ##{request.id}"
  # end
end
