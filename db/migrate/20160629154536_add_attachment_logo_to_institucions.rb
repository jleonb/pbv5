class AddAttachmentLogoToInstitucions < ActiveRecord::Migration
  def self.up
    change_table :institucions do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :institucions, :logo
  end
end
