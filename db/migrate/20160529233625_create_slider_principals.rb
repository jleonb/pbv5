class CreateSliderPrincipals < ActiveRecord::Migration
  def change
    create_table :slider_principals do |t|
      t.string :img
      t.string :link

      t.timestamps null: false
    end
  end
end
