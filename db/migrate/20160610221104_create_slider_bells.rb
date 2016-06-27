class CreateSliderBells < ActiveRecord::Migration
  def change
    create_table :slider_bells do |t|
      t.string :img
      t.string :link

      t.timestamps null: false
    end
  end
end
