class AddAttachmentImgToCRestaurants < ActiveRecord::Migration
  def self.up
    change_table :c_restaurants do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :c_restaurants, :img
  end
end
