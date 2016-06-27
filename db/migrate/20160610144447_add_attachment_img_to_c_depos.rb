class AddAttachmentImgToCDepos < ActiveRecord::Migration
  def self.up
    change_table :c_depos do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :c_depos, :img
  end
end
