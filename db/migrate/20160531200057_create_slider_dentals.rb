class CreateSliderDentals < ActiveRecord::Migration
  def change
    create_table :slider_dentals do |t|
      t.string :name
      t.string :img
      t.string :link

      t.timestamps null: false
    end
  end
end
