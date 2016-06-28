class CreateSliderTops < ActiveRecord::Migration
  def change
    create_table :slider_tops do |t|
      t.string :link
      t.string :img
      t.string :n_contrato

      t.timestamps null: false
    end
  end
end
