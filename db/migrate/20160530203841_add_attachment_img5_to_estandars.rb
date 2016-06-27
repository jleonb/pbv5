class AddAttachmentImg5ToEstandars < ActiveRecord::Migration
  def self.up
    change_table :estandars do |t|
      t.attachment :img5
    end
  end

  def self.down
    remove_attachment :estandars, :img5
  end
end
