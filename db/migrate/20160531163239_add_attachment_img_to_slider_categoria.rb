class AddAttachmentImgToSliderCategoria < ActiveRecord::Migration
  def self.up
    change_table :slider_categoria do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slider_categoria, :img
  end
end
