class Caso < ActiveRecord::Base
  has_many :imagens
  geocoded_by :ubicacion
  validates_presence_of :titulo, :problema, :ubicacion
  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([\A#\&\?]*).*/i
  validates :youtubevideo, presence: true, format: YT_LINK_FORMAT
  belongs_to :user
  has_many :recursos
  accepts_nested_attributes_for :recursos
  accepts_nested_attributes_for :imagens
  def to_param
  "#{id} #{titulo}".parameterize
  end
  after_validation :geocode, :if => :address_changed?
end
