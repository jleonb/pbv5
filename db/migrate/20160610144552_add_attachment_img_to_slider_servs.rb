class AddAttachmentImgToSliderServs < ActiveRecord::Migration
  def self.up
    change_table :slider_servs do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slider_servs, :img
  end
end
