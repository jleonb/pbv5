class AddAttachmentImgToNewsletters < ActiveRecord::Migration
  def self.up
    change_table :newsletters do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :newsletters, :img
  end
end
