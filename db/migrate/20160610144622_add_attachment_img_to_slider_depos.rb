class AddAttachmentImgToSliderDepos < ActiveRecord::Migration
  def self.up
    change_table :slider_depos do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slider_depos, :img
  end
end
