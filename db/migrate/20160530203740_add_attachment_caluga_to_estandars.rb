class AddAttachmentCalugaToEstandars < ActiveRecord::Migration
  def self.up
    change_table :estandars do |t|
      t.attachment :caluga
    end
  end

  def self.down
    remove_attachment :estandars, :caluga
  end
end
