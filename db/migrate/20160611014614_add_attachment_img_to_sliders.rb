class AddAttachmentImgToSliders < ActiveRecord::Migration
  def self.up
    change_table :sliders do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :sliders, :img
  end
end
