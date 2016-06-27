class AddAttachmentImgToSliderResta < ActiveRecord::Migration
  def self.up
    change_table :slider_resta do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slider_resta, :img
  end
end
