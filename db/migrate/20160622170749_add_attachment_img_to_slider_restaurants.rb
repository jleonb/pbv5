class AddAttachmentImgToSliderRestaurants < ActiveRecord::Migration
  def self.up
    change_table :slider_restaurants do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slider_restaurants, :img
  end
end
