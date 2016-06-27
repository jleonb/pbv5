class AddAttachmentImgToCBells < ActiveRecord::Migration
  def self.up
    change_table :c_bells do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :c_bells, :img
  end
end
