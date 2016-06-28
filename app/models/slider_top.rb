class SliderTop < ActiveRecord::Base
	
	belongs_to :institucion

	has_attached_file :img, styles: { large: "600x400>", thumb: "150x150#" }
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
end
