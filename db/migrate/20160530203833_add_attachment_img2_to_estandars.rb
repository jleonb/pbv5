class AddAttachmentImg2ToEstandars < ActiveRecord::Migration
  def self.up
    change_table :estandars do |t|
      t.attachment :img2
    end
  end

  def self.down
    remove_attachment :estandars, :img2
  end
end
