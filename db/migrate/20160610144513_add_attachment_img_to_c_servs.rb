class AddAttachmentImgToCServs < ActiveRecord::Migration
  def self.up
    change_table :c_servs do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :c_servs, :img
  end
end
