class AddAttachmentImgToSliderTops < ActiveRecord::Migration
  def self.up
    change_table :slider_tops do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slider_tops, :img
  end
end
