class AddAttachmentImg1ToEstandars < ActiveRecord::Migration
  def self.up
    change_table :estandars do |t|
      t.attachment :img1
    end
  end

  def self.down
    remove_attachment :estandars, :img1
  end
end
