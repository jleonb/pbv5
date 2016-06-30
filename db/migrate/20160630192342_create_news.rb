class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :institucion_id
      t.string :img
      t.string :link

      t.timestamps null: false
    end
  end
end
