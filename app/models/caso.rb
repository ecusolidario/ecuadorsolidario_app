class Caso < ActiveRecord::Base
  belongs_to :user
  has_many :recursos
  accepts_nested_attributes_for :recursos
  def to_param
  "#{id} #{titulo}".parameterize
end

end
