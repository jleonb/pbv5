class Institucion < ActiveRecord::Base
  has_many :users
  has_many :slider_tops

  has_attached_file :logo, styles: { large: "400x640>", thumb: "150x150#" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  
end
