class AddAttachmentNewsletterToInstitucions < ActiveRecord::Migration
  def self.up
    change_table :institucions do |t|
      t.attachment :newsletter
    end
  end

  def self.down
    remove_attachment :institucions, :newsletter
  end
end
