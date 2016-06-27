class AddAttachmentImgToSliderDentals < ActiveRecord::Migration
  def self.up
    change_table :slider_dentals do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slider_dentals, :img
  end
end
