class AddAttachmentImg4ToEstandars < ActiveRecord::Migration
  def self.up
    change_table :estandars do |t|
      t.attachment :img4
    end
  end

  def self.down
    remove_attachment :estandars, :img4
  end
end
