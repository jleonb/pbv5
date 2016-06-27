class AddAttachmentImg3ToEstandars < ActiveRecord::Migration
  def self.up
    change_table :estandars do |t|
      t.attachment :img3
    end
  end

  def self.down
    remove_attachment :estandars, :img3
  end
end
