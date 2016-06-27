class AddAttachmentImgToEstandarDestacados < ActiveRecord::Migration
  def self.up
    change_table :estandar_destacados do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :estandar_destacados, :img
  end
end
