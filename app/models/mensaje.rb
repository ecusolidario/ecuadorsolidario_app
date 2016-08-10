class Mensaje

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :nombre, :email, :contenido

  validates :nombre,
    presence: true

  validates :email,
    presence: true

  validates :contenido,
    presence: true

end
