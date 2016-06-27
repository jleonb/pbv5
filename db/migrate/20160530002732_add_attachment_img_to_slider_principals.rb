class AddAttachmentImgToSliderPrincipals < ActiveRecord::Migration
  def self.up
    change_table :slider_principals do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slider_principals, :img
  end
end
