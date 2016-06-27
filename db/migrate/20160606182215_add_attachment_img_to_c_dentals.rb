class AddAttachmentImgToCDentals < ActiveRecord::Migration
  def self.up
    change_table :c_dentals do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :c_dentals, :img
  end
end
