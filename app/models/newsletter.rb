class Newsletter < ActiveRecord::Base
	has_attached_file :img, styles: { large: "500x1000>", thumb: "150x150#" }
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
end
