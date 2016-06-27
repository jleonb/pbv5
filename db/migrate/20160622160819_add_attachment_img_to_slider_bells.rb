class AddAttachmentImgToSliderBells < ActiveRecord::Migration
  def self.up
    change_table :slider_bells do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slider_bells, :img
  end
end
