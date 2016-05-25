class Caso < ActiveRecord::Base
  belongs_to :user
  has_many :recursos
  accepts_nested_attributes_for :recursos
end
