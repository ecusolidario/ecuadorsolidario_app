require "administrate/base_dashboard"

class RecursoDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    caso: Field::BelongsTo,
    id: Field::Number,
    nombre: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    objetivo: Field::Number,
    conseguidos: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :caso,
    :id,
    :nombre,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :caso,
    :id,
    :nombre,
    :created_at,
    :updated_at,
    :objetivo,
    :conseguidos,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :caso,
    :nombre,
    :objetivo,
    :conseguidos,
  ].freeze

  # Overwrite this method to customize how recursos are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(recurso)
  #   "Recurso ##{recurso.id}"
  # end
end
