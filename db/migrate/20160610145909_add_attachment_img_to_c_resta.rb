class AddAttachmentImgToCResta < ActiveRecord::Migration
  def self.up
    change_table :c_resta do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :c_resta, :img
  end
end
