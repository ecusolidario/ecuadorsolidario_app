class Imagen < ActiveRecord::Base
  belongs_to :caso

  has_attached_file :imagen, :styles => { :medium => "800x500>", :thumb => "500x500#" }, :default_url => "http://placehold.it/600x600"
  validates_attachment_content_type :imagen, :content_type => /\Aimage\/.*\Z/

end
